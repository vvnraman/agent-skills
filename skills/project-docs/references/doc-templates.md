# Sphinx Documentation Templates

Use Divio as the page-type model:

- Tutorials: learning-oriented, guided practice
- How-to guides: task-oriented, fast path to completion
- Explanation: understanding-oriented, but written here as an operational maintainer runbook
- Reference: information-oriented, precise lookup

Prefer one primary type per page. Split mixed pages unless reader workflow clearly benefits from keeping them together.

## Markup format guidance

For Sphinx projects, prefer reStructuredText and Sphinx directives unless the repository already uses another agreed format.

The section names and ordering below matter more than exact markup syntax, but `.rst` is the default.

Common syntax equivalents:

- H1 title:
  - Markdown: `# Title`
  - reStructuredText:
    ```rst
    Title
    =====
    ```
- H2 section:
  - Markdown: `## Section`
  - reStructuredText:
    ```rst
    Section
    -------
    ```
- Bulleted list:
  - Markdown: `- item`
  - reStructuredText: `- item`
- Numbered list:
  - Markdown: `1. item`
  - reStructuredText: `#. item` (or `1.`)
- Link:
  - Markdown: `[Text](path/to/doc)`
  - reStructuredText: `` `Text <path/to/doc>`_ ``
- Code block:
  - Markdown: fenced triple backticks
  - reStructuredText: `.. code-block:: <lang>`

## Project documentation set

For repositories with a project docs set, keep navigation coherent across:

1. `docs/tutorials/`
2. `docs/how-to/`
3. `docs/explanation/`
4. `docs/reference/`

Under `docs/reference/project/`, prefer:

1. `index.rst`
2. `changelog.rst`
3. `plan.rst`
4. dated changelog pages in the repo's chosen changelog directory

Use relative links that work in Sphinx.

## Tutorial structure

Purpose: teach by leading a learner through a concrete path.

Minimum required sections:

1. `What You Will Build`
2. `Prerequisites`
3. Ordered step sections (`Step 1`, `Step 2`, ...)
4. `Expected Outcome`

Recommended sections:

1. `Next Steps`

## How-to guide structure

Purpose: solve one concrete problem for a reader who already knows the system at a basic level.

Minimum required sections:

1. `Goal`
2. `Steps`
3. `Validation`

Recommended sections:

1. `Prerequisites`
2. `Troubleshooting`
3. `Related Docs`

## Reference structure

Purpose: provide exact facts for lookup.

Minimum required sections:

1. `Summary`
2. `Specification`
3. `Interfaces` or `Examples`, whichever best matches the subject

Recommended sections:

1. `Related Docs`
2. Generated snapshots or `literalinclude` evidence when exact output matters

Project-specific reference pages should stay under `docs/reference/project/`.

## Explanation structure

Purpose: help a maintainer understand current behavior well enough to trace, debug, or modify it.

Use the subject-appropriate pattern instead of one rigid outline.

Required starting pattern:

1. One concise intro stating intent and scope.
2. One subject-appropriate structure section:
   - `Directory layout` for file and folder topics
   - `Overall structure` for code or module organization
   - `Logical flow` for behavior or control flow
3. Short bullets that describe the important pieces or top-level flow.
4. Focused flow sections only when they add value, such as:
   - `Load order`
   - entry points
   - include or source order
   - top-down call flow
5. `Relevant changelogs`

Explanation page rules:

- Describe current behavior in present tense.
- Prefer operational verbs.
- Keep sections compact and scannable.
- Use basenames instead of repeated full paths when a nearby tree already provides context.
- Use `literalinclude` or generated snapshots when showing evidence.
- Do not add generic design-rationale sections unless explicitly requested.

## Changelog page structure

Purpose: record historical changes briefly and link to deeper docs.

Minimum required structure:

1. Page title: `YYYY-MM mmm - <summary>`
2. First subsection: `YYYY-MM-DD - Day`
3. Exactly one plain sentence immediately below that subsection
4. `Change summary`
5. Links to deeper docs where relevant

Rules:

- Use dated filename format: `YYYY-MM-mmm-<slug>.rst`
- Keep entries concise
- Use past tense here; keep current-behavior docs in present tense

## Cross-link and duplication rules

- Duplicate content only when it materially improves reader workflow.
- Keep duplicated content short and adapted to the page type.
- Link to reference pages for exact facts.
- Link from changelog pages to deeper docs, and from explanation docs back to relevant changelog entries when useful.
- Update links whenever pages move or are renamed.
