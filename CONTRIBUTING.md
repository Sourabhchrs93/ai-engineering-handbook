# Contributing

Contributions should make a reader more capable of making or implementing an engineering decision.

Read the repository-wide conventions in `AGENTS.md` before making substantial changes. Use `templates/chapter-template.md` for new chapters and `templates/example/` for runnable examples.

## Writing guidelines

- Lead with the problem and the decision, then explain the mechanism.
- Prefer small, executable examples over large framework-specific samples.
- Name trade-offs, failure modes, and operational consequences.
- Cite primary sources for external claims.
- Date details that may change, such as pricing, limits, and model availability.
- Use sentence-case headings and descriptive link text.

## Adding a chapter

1. Create a Markdown file in the appropriate section under `docs/`.
2. Add it to `nav` in `mkdocs.yml`.
3. Link it from a nearby overview page.
4. Run `mkdocs build --strict` and fix every warning.
