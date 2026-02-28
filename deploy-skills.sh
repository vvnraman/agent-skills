#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SOURCE_DIR="${SCRIPT_DIR}/skills"
TARGET_DIR="${HOME}/.config/ai-skills"

usage() {
  echo "Usage: $0 [-n|--dry-run]"
}

has_rsync() {
  command -v rsync >/dev/null 2>&1
}

validate_destination() {
  local skill_dir="$1"
  local target_dir="$2"
  local skill_name dest

  skill_name="$(basename "${skill_dir}")"
  dest="${target_dir}/${skill_name}/"

  if [[ -z "${skill_name}" || "${skill_name}" == "." || "${skill_name}" == ".." ]]; then
    echo "Error: invalid skill directory name derived from ${skill_dir}" >&2
    return 1
  fi

  if [[ "${dest}" != "${target_dir}/"* ]]; then
    echo "Error: refusing to deploy outside target root: ${dest}" >&2
    return 1
  fi

  return 0
}

deploy_with_rsync() {
  local skill_dir="$1"
  local dest="$2"
  local skill_name="$3"
  local dry_run="$4"

  if [[ "${dry_run}" == true ]]; then
    echo "[dry-run] Would deploy ${skill_name} -> ${dest}"
    echo "[dry-run] rsync -a --delete \"${skill_dir}\" \"${dest}\""
  else
    echo "Deploying ${skill_name} -> ${dest} (rsync)"
    rsync -a --delete "${skill_dir}" "${dest}"
  fi
}

deploy_with_cp_fallback() {
  local skill_dir="$1"
  local dest="$2"
  local skill_name="$3"
  local dry_run="$4"

  if [[ "${dry_run}" == true ]]; then
    echo "[dry-run] Would deploy ${skill_name} -> ${dest}"
    echo "[dry-run] mkdir -p \"${dest}\""
    echo "[dry-run] rm -rf -- \"${dest:?}\"/* \"${dest:?}\"/.[!.]* \"${dest:?}\"/..?*"
    echo "[dry-run] cp -a \"${skill_dir}.\" \"${dest}\""
  else
    echo "Deploying ${skill_name} -> ${dest} (cp fallback)"
    mkdir -p "${dest}"
    rm -rf -- "${dest:?}"/* "${dest:?}"/.[!.]* "${dest:?}"/..?*
    cp -a "${skill_dir}." "${dest}"
  fi
}

deploy_skills() {
  local source_dir="$1"
  local target_dir="$2"
  local dry_run="$3"
  local skill_dir skill_name dest use_rsync
  local -a skill_dirs=()

  use_rsync=false
  if has_rsync; then
    use_rsync=true
  fi

  shopt -s nullglob
  skill_dirs=("${source_dir}"/*/)

  if [[ ${#skill_dirs[@]} -eq 0 ]]; then
    echo "No skill directories found in ${source_dir}"
    return 0
  fi

  echo "Syncing managed skills from ${source_dir}"
  echo "Unmanaged skills in ${target_dir} will be left untouched."

  for skill_dir in "${skill_dirs[@]}"; do
    skill_name="$(basename "${skill_dir}")"
    dest="${target_dir}/${skill_name}/"

    validate_destination "${skill_dir}" "${target_dir}"

    if [[ "${use_rsync}" == true ]]; then
      deploy_with_rsync "${skill_dir}" "${dest}" "${skill_name}" "${dry_run}"
    else
      deploy_with_cp_fallback "${skill_dir}" "${dest}" "${skill_name}" "${dry_run}"
    fi
  done
}

main() {
  local dry_run=false

  while [[ $# -gt 0 ]]; do
    case "$1" in
      -n|--dry-run)
        dry_run=true
        shift
        ;;
      -h|--help)
        usage
        exit 0
        ;;
      *)
        echo "Error: unknown option: $1" >&2
        usage >&2
        exit 1
        ;;
    esac
  done

  if [[ ! -d "${SOURCE_DIR}" ]]; then
    echo "Error: skills directory not found at ${SOURCE_DIR}" >&2
    exit 1
  fi

  if [[ "${dry_run}" == false ]]; then
    mkdir -p "${TARGET_DIR}"
  fi

  deploy_skills "${SOURCE_DIR}" "${TARGET_DIR}" "${dry_run}"

  if [[ "${dry_run}" == true ]]; then
    echo "Dry run complete: no files were changed."
  else
    echo "Deployment complete: ${TARGET_DIR}"
  fi
}

main "$@"
