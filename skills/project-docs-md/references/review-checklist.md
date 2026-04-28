# Markdown Documentation Review Checklist

Use this checklist to review Divio-style Markdown docs intended for long-term maintenance.

## 1. Divio type gate

- Confirm the page has a clear primary type: tutorial, how-to, explanation, or reference.
- Confirm the title and opening paragraph match that type.
- If mixed types appear, confirm there is a strong reader-facing reason and one clearly dominant type.

## 2. Markdown and repo fit

- Confirm the page format matches the repository's Markdown docs setup.
- Confirm the page lives under the correct `docs/` area.
- Confirm links are coherent, relative, and use explicit `.md` targets when the repo expects portable Markdown links.
- Confirm Obsidian-only wikilinks are absent unless the repo explicitly uses them.
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

- Confirm code fences or generated snapshots use actual project files or command output.
- Confirm each snippet names its source file or command when that context matters.
- Confirm snippet ranges are tight and readable.
- Confirm generated layout or output snapshots follow repo conventions.

## 7. Project docs and changelog

- Confirm project-level maintenance docs stay under `docs/project/` when that structure exists.
- Confirm `index.md`, `changelog.md`, and `plan.md` are updated when the change requires it.
- Confirm `docs/reference/meta.md` is updated when shared documentation conventions changed.
- Confirm changelog filenames and visible labels follow the required date format.
- Confirm each dated changelog page uses the required title, first subsection, single plain sentence, and `Change summary` heading.
- Confirm changelog links to deeper docs are current.

## 8. Visual clarity

- Confirm simple visuals use small ASCII diagrams when that is the clearest option.
- Confirm richer visuals use fenced `mermaid` blocks only when they materially improve understanding.
- Confirm diagrams stay scoped to the page's task or explanation.

## 9. Clarity and safety

- Use active voice and concrete verbs.
- Prefer short paragraphs and direct headings.
- Confirm operational guardrails are explicit where needed.
- Mark destructive or irreversible actions clearly.
- Avoid broad claims that cannot be verified from the project.

## 10. Final readiness gate

- Confirm a reader can identify the page type and purpose from the first screen.
- Confirm the page strongly fulfills its Divio role.
- Confirm links, examples, and commands are internally consistent and actionable.
- Confirm the verification or rebuild step is included when needed.
