---
name: project-docs-md
description: Draft, rewrite, and review long-term project documentation in Markdown using Divio documentation types, docs/project maintenance pages, and Obsidian-compatible links.
---

# Markdown Project Documentation

## Overview

Use this skill when asked to write, rewrite, or review long-term project documentation in Markdown.

Classify each page using the Divio model:
- tutorial
- how-to guide
- explanation
- reference

Then write it using the repository's Markdown, project maintenance, and cross-linking conventions.

Optimize for:
- one clear primary doc type per page
- maintainability as the project evolves
- concrete, verifiable statements over broad narrative
- coherent `docs/` structure and useful cross-links
- portability across Git viewers, editors, and Obsidian vault syncs

## Core workflow

1. Identify the primary Divio type.
2. Capture audience, goal, scope, and repo-specific doc constraints.
3. Confirm the source of truth from code, config, commands, generated snapshots, changelog, or existing docs.
4. Use the matching pattern from [doc-templates.md](references/doc-templates.md).
5. Apply the Markdown and project-structure rules in this skill.
6. Update `docs/project/` pages when the change affects project-level docs.
7. Update `docs/reference/meta.md` when the change affects shared documentation conventions.
8. Validate with [review-checklist.md](references/review-checklist.md).
9. Run the smallest useful verification step, or provide the exact verification command when a docs build exists.

## Type selection rules

- Choose `tutorial` for guided learning by doing.
- Choose `how-to` for a fast path through one practical task.
- Choose `explanation` to help maintainers understand current behavior, structure, load order, or flow.
- Choose `reference` for exact lookup: commands, paths, defaults, options, limits, interfaces, or file conventions.

Prefer one primary type per page. Split mixed content unless a single page clearly serves reader workflow better. If secondary content remains, keep it brief and subordinate.

## Inputs to capture before writing

Before drafting, gather:
- page or component name
- intended audience
- requested doc type, or best-fit type if unspecified
- relevant files, commands, config, code paths, or generated artifacts
- doc tooling expectations (`Markdown`, static site tooling, or editor-specific constraints if any)
- repo structure expectations under `docs/`
- version, commit, or date context when behavior is volatile

If information is missing, state assumptions explicitly instead of guessing.

## Markdown and project-structure rules

- Prefer `.md` for source docs.
- Keep source docs under `docs/`.
- Keep the doc set coherent across tutorials, how-to guides, explanation, and reference.
- Keep project-level maintenance pages under `docs/project/`.
- Maintain `docs/project/index.md`, `changelog.md`, and `plan.md` when relevant to the requested change.
- Maintain `docs/reference/meta.md` when shared documentation rules change.
- Prefer generated snapshots under `docs/generated/` when the repo uses them for command output or layout evidence.
- Use relative Markdown links with explicit `.md` targets so links work in Git viewers, plain editors, and Obsidian.
- Avoid Obsidian-only wikilinks unless the repository has explicitly standardized on them.
- Do not hand-edit generated output.

## Project-level docs rules

When the repository keeps project docs under `docs/project/`:
- keep `index.md` as the overview page
- keep `changelog.md` as the entry point for dated changes
- keep `plan.md` maintained when the task affects planned work or known issues
- prefer linking from changelog entries to deeper explanation, how-to, tutorial, or reference pages instead of putting long prose in the changelog itself

## Changelog conventions

- Use dated filenames: `YYYY-MM-mmm-<slug>.md`
- In `changelog.md`, visible labels use month-key style: `YYYY-MM-mmm - ...`
- Keep newest entries first
- In each dated changelog page:
  - title stays `YYYY-MM mmm - <summary>`
  - first subsection is `YYYY-MM-DD - Day`
  - add exactly one plain sentence immediately below that subsection
  - use section heading `Change summary`
- Changelog pages are the place for history and past tense.
- Tutorial, how-to, explanation, and reference pages describe current behavior and link to changelog pages for historical context.

## Writing style rules shared across page types

- Prefer concise, scannable sections and direct headings.
- For how-to and reference pages, prefer task-first structure: runnable commands or exact facts first, short context second.
- Prefer present tense outside changelog pages.
- Prefer plain language unless a technical term names a file, command, setting, API, or behavior the reader needs.
- Prefer operational verbs such as `loads`, `sources`, `includes`, `resolves`, `writes`, `compares`, and `builds`.
- Avoid unverifiable claims, generic architecture prose, and repeated path explanations.
- Include operational guardrails explicitly when actions are destructive, stateful, or branch/worktree-sensitive.
- Keep duplicated content minimal. Cross-link to the canonical page instead.

## Visual rules

- Use small ASCII diagrams when a trivial relationship, path, or flow is easier to scan visually than in prose.
- Use fenced `mermaid` diagrams when the explanation benefits from a richer visual and the diagram still needs to render in Markdown tooling such as Obsidian.
- Keep diagrams tight and task-specific instead of turning them into large architecture posters.

## Type-specific writing rules

### Tutorial

- Teach through one guided path.
- Include prerequisites, ordered steps, and an expected outcome.
- Verify progress at meaningful step boundaries.
- Avoid deep theory, broad reference material, and branching paths.

### How-to guide

- Solve one concrete task quickly.
- Lead with runnable steps or commands.
- Keep context minimal and directly useful.
- Include validation and troubleshooting only when they materially help complete the task.

### Reference

- Present exact facts, defaults, interfaces, limits, file locations, or command behavior.
- Keep the structure neutral and lookup-friendly.
- Prefer generated snapshots or compact Markdown code blocks when exact output matters.
- Avoid broad rationale or tutorial-style walkthroughs.

### Explanation

- Write explanation pages as operational runbooks for maintainers.
- Focus on current behavior, structure, load order, include edges, execution flow, and traceability.
- Keep sections lean and scannable.
- Choose the structure heading that matches the subject:
  - `Directory layout` for file and folder topics
  - `Overall structure` for code or module organization
  - `Logical flow` for behavior or control flow
- Add focused flow or load-order sections only when they materially help the reader.
- Use `Relevant changelogs` to point to historical changes.
- Do not add generic sections such as `Why it is designed this way` or `Future evolution` unless the user explicitly asks for design analysis rather than operational explanation.

## Evidence rules

When documenting source, config, or command behavior:
- use tight Markdown code fences from actual files or command output
- identify the source file or command near the snippet
- keep snippet ranges tight
- prefer evidence that lets a maintainer verify the claim directly
- prefer generated snapshots under `docs/generated/` when exact output is reused across pages

## Layout snapshot rules

When a repo uses generated layout snapshots:
- keep layout-only sections free of explanatory prose
- use generated files from `docs/generated/`
- render generated layout includes in fenced code blocks with an appropriate language tag such as `sh`
- identify the relative directory or file path above the snapshot when that context helps
- if layout snapshots are generated by a script or docs build, prefer that mechanism over hand-maintained tree blocks

## Rewrite strategy

When rewriting:
1. preserve technical correctness
2. preserve the chosen Divio type
3. remove mixed-type drift
4. improve scanability and maintainability
5. add or repair cross-links where they materially help

## Review strategy

When reviewing:
1. check Divio type fit first
2. check technical correctness second
3. check Markdown and project-structure compliance third
4. report issues by severity with concrete edits

## Output format

When drafting or rewriting, return:
1. Selected Divio type and why
2. Revised document text
3. Assumptions made
4. Gaps requiring confirmation
5. Related pages or cross-links to add or update
6. Verification command(s) if docs should be rebuilt

When reviewing only, return:
1. Findings ordered by severity
2. Divio-type violations
3. Concrete suggested edits
4. Readiness summary

## References

- Use [doc-templates.md](references/doc-templates.md) for section patterns and markup expectations.
- Use [review-checklist.md](references/review-checklist.md) for final validation.
