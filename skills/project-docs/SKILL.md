---
name: project-docs
description: Create, rewrite, and review long-term software component documentation using the Divio four-type model: tutorials, how-to guides, reference, and explanation. Use when asked to document project components as they evolve, organize docs by purpose, improve clarity and maintainability, or convert mixed docs into type-specific pages.
---

# Documentation Writing

## Overview

Apply the Divio documentation system so each page has one clear purpose.  
Optimize for maintainability over time: keep docs accurate as components evolve and make navigation between doc types explicit.

## Workflow

1. Classify the request into a primary type: tutorial, how-to guide, reference, or explanation.
2. Capture audience, goal, and scope for that type.
3. Use the matching template from [doc-templates.md](references/doc-templates.md).
4. Ensure the component doc set includes mandatory `Reference > Project` docs (`Changelog`, `Plan`)
   and update them when relevant.
5. Draft only content that fits the selected type's purpose.
6. Add cross-links to related pages where they materially help the reader.
7. `Project` page should include a `Vision` section which describes the project goals in brief and
   acts as a harness for plans to be constrained.
9. Validate with [review-checklist.md](references/review-checklist.md) and revise.

## Type Selection Rules

- Choose `tutorial` for guided learning by doing.
- Choose `how-to` for solving a specific task quickly.
- Choose `explanation` for understanding concepts, rationale, and trade-offs.
- Choose `reference` for precise factual lookup.
  - Chosee `reference` sub-type `Changelog` to describe a change in brief as the project evovles,
    with links to explanations, how-to guides, references or tutorials which should have the bulk of
    the details.

Prefer splitting content into separate pages by type. Allow mixed content only when a single page is
clearly better for reader workflow; keep one primary type and keep secondary content brief.

## Input Capture

Before writing, gather:

- Component name and boundaries
- Current version or commit context
- Intended audience
- Type-specific goal
- Source of truth (code, tests, ADRs, tickets)

State assumptions explicitly when any input is missing.

## Writing Constraints by Type

### Writing a tutorial

- Teach progressively with steps and verification.
- Avoid deep theory and exhaustive option matrices.
- Show sample outputs if one is expected at the end of each step
- The flow should be linear and big conditional paths have been eliminated based on the tutorial in
  question.
  - Conditional paths should lead to their own tutorials.

### Writing a "How to" guide

- Focus on one practical task and minimal context.
- Avoid long conceptual detours.
- Show sample outputs only at the end of the guide.

### Writing a reference doc

- Present exact facts, signatures, defaults, limits, and error cases.
- Avoid opinionated guidance beyond factual notes.

### Writing explanation

- Include a brief overview of what the document in question is about.
- Explain why and how, including trade-offs and architecture.
- Avoid step-by-step procedural instructions unless brief and illustrative.
- Prefer operational wording over abstract wording. Be concrete rather than generic.
- Explanation should read like a flow spec, not an essay.
- Favor short, procedural bullets with strong verbs (loads, reads, drives) over explanatory prose.
- Reduce non-essential rationale text (“keeps behavior predictable…”) and retaining only info needed
  to understand/trace behavior.
- Information should be visually verifiable by including short evidence from the project to showcase
  the things we're explaning.
- Using sections to separate concepts without over-explaining.
- Avoid broad architectural claims not tied to a concrete behavior or user/operator decisions.

## Long-term Maintenance Rules

- Prefer small, frequent doc updates aligned with code changes.
- Include version or date context for behavior that may change.
- Mark deprecated behavior clearly and link replacements.
- Keep `Reference > Project` current:
  - `Vision` subsection under `Project` reflects current direction and intended evolution.
  - `Changelog` receives short dated entries for project changes, with links to detailed docs.
  - `Plan` tracks upcoming features and known issues.
- Keep cross-links current between relevant related pages.
- Flag stale or uncertain content instead of guessing.

## Rewrite and Review Strategy

- Rewrite:
1. Preserve technical correctness.
2. Preserve a clear primary type.
3. Improve clarity and scanning.
4. Add missing cross-links where they materially help.

- Review:
1. Check type purity first.
2. Check correctness and completeness second.
3. Report findings by severity with concrete edits.

## Output Format

When drafting or rewriting, return:
1. Document type selected and why.
2. Revised document text.
3. Assumptions made (when applicable).
4. Gaps requiring confirmation (when applicable).
5. Cross-links to add (when applicable).

When reviewing only, return:

1. Findings ordered by severity.
2. Type-specific violations (if any).
3. Suggested edits for each finding.
4. A short readiness summary.

## References

- Use [doc-templates.md](references/doc-templates.md) for Divio-aligned templates and cross-link rules.
- Use [review-checklist.md](references/review-checklist.md) for strict type and maintenance validation.
