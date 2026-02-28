# Divio Documentation Templates

Use the four-type system consistently:

- Tutorials: learning-oriented, guided practice
- How-to guides: problem-oriented, task completion
- Reference: information-oriented, factual lookup
- Explanation: understanding-oriented, concepts and rationale

Prefer one primary type per page. If mixed content is needed, keep the secondary type brief and clearly subordinate.

## Markup Format Guidance (Markdown + reStructuredText)

The templates below define content structure, not markup syntax.  
Use the same section names and ordering in either Markdown or reStructuredText.

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

## Component Documentation Set (Index)

Create one index page per component with these sections in order:

1. `Tutorials`
2. `How-to guides`
3. `Reference`
4. `Explanation`

List links to available pages under each section. Use relative links that work in your doc tooling.

`Reference` must always include a `Project` subsection with:

1. `Vision` document:
   - Describe what the project is, why it exists, and desired direction of evolution.
2. `Changelog` documents:
   - Maintain short, dated change notes for each meaningful evolution.
   - Treat each entry like a concise commit message.
   - Link each entry to deeper docs (how-to/reference/explanation) when details are elsewhere.
3. `Plan` document:
   - Track upcoming features, prioritized work, and known issues.

Suggested reference links in the index:

- `Reference > Project > Vision`
- `Reference > Project > Changelog Index`
- `Reference > Project > Plan`

## Tutorial Structure

Purpose: teach by leading a learner through a concrete path.

Minimum required sections:

1. `What You Will Build`
2. `Prerequisites`
3. Ordered `Step` sections (`Step 1`, `Step 2`, ...)
4. `Expected Outcome`

Recommended sections:

1. `Next Steps`

## How-to Guide Structure

Purpose: solve a specific problem for someone already familiar with the system.

Minimum required sections:

1. `Goal`
2. `Steps`
3. `Validation`

Recommended sections:

1. `Prerequisites`
2. `Troubleshooting`
3. `Related Docs`

## Reference Structure

Purpose: provide precise facts for lookup.

Minimum required sections:

1. `Summary`
2. `Specification` (facts, defaults, limits, constraints)
3. `Interfaces` (if applicable)

Recommended sections:

1. `Examples`
2. `Related Docs`

Project-specific reference requirement (always required per component doc set):

1. Include `Project/Vision` document.
2. Include `Project/Changelog` set (dated, short entries).
3. Include `Project/Plan` document.

## Explanation Structure

Purpose: build deeper understanding of why the system works this way.

Minimum required sections:

1. `Context`
2. `How It Works`
3. `Why It Is Designed This Way`
4. `Future Evolution`

Recommended sections:

1. `Alternatives Considered`
2. `Implications`
3. `Related Docs`

For `Future Evolution`, cover:

- Likely change vectors
- Signals that indicate current design should be revisited
- Safe migration approach for expected changes

## Cross-link and Duplication Rules

- Duplicate content only when needed for usability in each type.
- Keep duplicated content short and adapted to the type's purpose.
- Link to the canonical reference for exact values, signatures, and limits.
- Add cross-links where they improve task completion or understanding.
- Update links whenever pages are renamed or moved.
