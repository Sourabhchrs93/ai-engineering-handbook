# Contributing to the AI Engineering Handbook

Contributions should make a reader more capable of making or implementing an engineering decision.

Read the repository-wide conventions in `AGENTS.md` before making substantial changes. Use `templates/chapter-template.md` for new chapters and `templates/example/` for runnable examples.

## Writing guidelines

- Lead with the problem and the decision, then explain the mechanism.
- Prefer small, executable examples over large framework-specific samples.
- Name trade-offs, failure modes, and operational consequences.
- Cite primary sources for external claims.
- Date details that may change, such as pricing, limits, and model availability.
- Use sentence-case headings and descriptive link text.

## Standard chapter structure

Substantial chapters should follow `templates/chapter-template.md` and contain:

1. Learning objectives
2. Mental models
3. Diagrams
4. Theory from first principles
5. Examples
6. Common misconceptions
7. Production notes and trade-offs
8. Interview questions
9. Exercises
10. References

If a section does not apply, omit it deliberately rather than adding filler. Short index and navigation pages do not need the full chapter structure.

## Diagrams and examples

- Prefer Mermaid for architecture, sequence, state, and data-flow diagrams.
- Keep diagrams close to the text they explain.
- Introduce every diagram in prose and explain its important relationships.
- Use standalone files in `diagrams/` only when the visual cannot live naturally in Markdown.
- Keep examples minimal, runnable, deterministic, and focused on one learning objective.
- State what each teaching example omits from a production implementation.

## Production perspective

Chapters should connect mechanisms to engineering consequences where relevant: quality, latency, cost, reliability, observability, security, privacy, permissions, failure recovery, and operational ownership.

Interview material should test reasoning and trade-offs, not vocabulary recall.

## Adding a chapter

1. Create a Markdown file in the appropriate section under `docs/`.
2. Add it to `nav` in `mkdocs.yml`.
3. Link it from a nearby overview page.
4. Run `mkdocs build --strict` and fix every warning.
5. Update `SUMMARY.md`, `ROADMAP.md`, and `glossary.md` when the change affects navigation, progression, or terminology.

## Pull-request checklist

- [ ] Existing information is preserved or intentionally corrected with evidence.
- [ ] Internal links and navigation are updated.
- [ ] New claims have primary references where appropriate.
- [ ] Examples and commands have been tested.
- [ ] Diagrams render and add information beyond the surrounding prose.
- [ ] The strict documentation build passes.
