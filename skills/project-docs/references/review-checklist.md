# Sphinx Documentation Review Checklist

Use this checklist to review Divio-style Sphinx docs intended for long-term maintenance.

## 1. Divio type gate

- Confirm the page has a clear primary type: tutorial, how-to, explanation, or reference.
- Confirm the title and opening paragraph match that type.
- If mixed types appear, confirm there is a strong reader-facing reason and one clearly dominant type.

## 2. Sphinx and repo fit

- Confirm the page format matches the repository's Sphinx setup.
- Confirm the page lives under the correct `docs/` area.
- Confirm links and toctree placement are coherent.
- Confirm generated output under `docs/_build/` was not hand-edited.
- Confirm generated evidence belongs under `docs/generated/` when the repo uses that pattern.

## 3. Current behavior vs history

- Confirm tutorial, how-to, explanation, and reference pages describe current behavior only.
- Confirm past tense and historical notes live in changelog pages.
- When behavior changed, confirm the page links to the relevant changelog entry instead of narrating old behavior inline.

## 4. Type-specific checks

Tutorial:
- Confirm there is a guided step-by-step flow.
- Confirm prerequisites and expected outcomes are present.
- Confirm deep reference material and branching paths are avoided.

How-to:
- Confirm one concrete task is solved.
- Confirm runnable steps or commands appear early.
- Confirm validation is present.
- Confirm context stays brief and task-focused.

Reference:
- Confirm exact facts, defaults, interfaces, limits, or file conventions are present.
- Confirm the structure is neutral and lookup-friendly.
- Confirm rationale and tutorial-style walkthroughs are avoided.

Explanation:
- Confirm the page reads like an operational runbook for maintainers.
- Confirm it focuses on current behavior, structure, load order, include edges, or flow.
- Confirm the structure heading matches the subject: `Directory layout`, `Overall structure`, or `Logical flow`.
- Confirm generic design-rationale sections are absent unless explicitly requested.
- Confirm relevant changelog links are present when useful.

## 5. Technical accuracy

- Verify commands, file paths, config keys, and code references against the current source of truth.
- Verify examples match current behavior.
- Mark uncertain or unverified statements clearly.

## 6. Evidence quality

- Confirm `literalinclude` blocks use actual project files.
- Confirm each such block includes `:lineno-match:`.
- Confirm `:emphasize-lines:` highlights only the relevant lines.
- Confirm `:caption:` uses basename only.
- Confirm snippet ranges are tight and readable.
- Confirm generated layout or output snapshots follow repo conventions.

## 7. Project docs and changelog

- Confirm project-level maintenance docs stay under `docs/reference/project/` when that structure exists.
- Confirm `index.rst`, `changelog.rst`, and `plan.rst` are updated when the change requires it.
- Confirm changelog filenames and visible labels follow the required date format.
- Confirm each dated changelog page uses the required title, first subsection, single plain sentence, and `Change summary` heading.
- Confirm changelog links to deeper docs are current.

## 8. Clarity and safety

- Use active voice and concrete verbs.
- Prefer short paragraphs and direct headings.
- Confirm operational guardrails are explicit where needed.
- Mark destructive or irreversible actions clearly.
- Avoid broad claims that cannot be verified from the project.

## 9. Final readiness gate

- Confirm a reader can identify the page type and purpose from the first screen.
- Confirm the page strongly fulfills its Divio role.
- Confirm links, examples, and commands are internally consistent and actionable.
- Confirm the verification or rebuild step is included when needed.
