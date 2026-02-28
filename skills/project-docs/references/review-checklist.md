# Documentation Review Checklist (Divio + Maintenance)

Use this checklist to evaluate drafts for long-term maintained software components.

## 1. Type Classification Gate (Mandatory)

- Confirm the page has a clear primary type: tutorial, how-to, reference, or explanation.
- Confirm the title and opening paragraph match the primary type's purpose.
- If mixed types are present, confirm there is a strong reader-facing reason and clear dominance of one type.

## 2. Type Purity Checks

Tutorial:
- Confirm step-by-step guided learning flow.
- Confirm explicit prerequisites and verification steps.
- Confirm no heavy reference tables or deep architecture detours.

How-to:
- Confirm one concrete problem/task is solved.
- Confirm concise steps and fast path to completion.
- Confirm no broad conceptual teaching beyond minimal context.

Reference:
- Confirm factual completeness: parameters, defaults, limits, errors, versions.
- Confirm neutral, lookup-friendly structure.
- Confirm no long narrative or persuasive rationale sections.

Explanation:
- Confirm conceptual model, rationale, and trade-offs are present.
- Confirm alternatives or implications are discussed.
- Confirm no full procedural walkthrough as primary content.

## 3. Technical Accuracy

- Verify commands, file paths, and config keys against current source systems.
- Verify examples match actual behavior for the documented version.
- Mark uncertain or unverified statements clearly.

## 4. Long-term Maintainability

- Confirm version/date context is present where behavior may change.
- Confirm deprecations and replacements are clearly labeled.
- Confirm ownership or update trigger is clear for volatile sections.
- Confirm stale information is removed or flagged.

## 5. Cross-link Coverage

- Confirm each page links to relevant related pages where useful.
- Confirm reference links point to canonical factual sources.
- Confirm no orphan pages (pages with no inbound or outbound related links).

## 6. Audience and Scope Control

- Confirm intended audience is clear and consistent with depth.
- Confirm prerequisites are realistic and not contradictory.
- Confirm non-goals are clear when scope is narrow.

## 7. Clarity and Execution Quality

- Use active voice and concrete verbs.
- Prefer short paragraphs and descriptive headings.
- Ensure examples are copy-paste-ready where applicable.
- Include expected outcomes so readers can self-validate.

## 8. Safety and Operational Risk

- Mark destructive or irreversible actions clearly.
- Add production-impact warnings where relevant.
- Provide rollback/recovery or escalation guidance for operational tasks.

## 9. Final Readiness Gate

- Confirm a reader can identify document type and purpose in the first screen.
- Confirm the page strongly fulfills its primary Divio purpose and keeps secondary content minimal.
- Confirm links, examples, and commands are internally consistent and actionable.
