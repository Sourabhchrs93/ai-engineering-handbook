# Repository instructions

## Purpose

This repository is a practical AI Engineering Handbook for senior, staff, and principal backend engineers learning to design production AI agents from first principles.

The handbook is a learning system, not a collection of vendor documentation. Explain why a mechanism exists, how it works, where it fails, and how an experienced engineer should operate it in production.

These instructions apply to every AI coding or writing assistant working in the repository, including Codex, ChatGPT, Claude, and similar tools.

## Source of truth

- `ROADMAP.md` defines the learning sequence and module status.
- `docs/` contains the canonical handbook content.
- `examples/` contains minimal runnable demonstrations.
- `projects/` contains end-to-end applications that combine modules.
- Learning-journal pages (`*-qa.md`, stored beside the chapter they accompany) preserve the learner's original answers, corrections, and evolving mental models.
- `templates/` defines the expected structure for new material.

Do not copy raw chat transcripts into the handbook. Convert discussions into durable explanations while preserving valuable personal Q&A in the learning journal.

## Non-negotiable rules

- Explain **why** before **how**.
- Prefer first-principles explanations over framework descriptions.
- Avoid buzzwords, marketing claims, and shallow summaries.
- Do not invent technical claims, citations, benchmarks, or implementation results.
- Preserve existing information when reorganizing or editing content.
- State uncertainty and mark incomplete sections rather than filling gaps speculatively.
- Keep architecture proportional to the problem; do not introduce agents where deterministic workflows suffice.

## Audience and voice

- Assume strong backend and distributed-systems experience.
- Explain AI-specific mathematics and terminology without assuming prior ML expertise.
- Lead from first principles and concrete mental models.
- Be precise, direct, and vendor-neutral.
- Avoid marketing language, unexplained jargon, and claims of model consciousness.
- Distinguish durable concepts from provider-specific details.

## Chapter standard

Use `templates/chapter-template.md` for substantial chapters. Every chapter should include, when applicable:

1. Metadata and prerequisites
2. Learning objectives
3. A concise mental model
4. A Mermaid diagram
5. Theory from first principles
6. A minimal example
7. Common misconceptions and failure modes
8. Production considerations
9. Interview questions
10. Exercises
11. Primary references

Examples must clarify a concept rather than showcase a framework. Keep chapters independently useful and link prerequisites instead of repeating them.

## Markdown and diagrams

- Use sentence-case headings and one H1 per page.
- Use descriptive link text and relative links for repository content.
- Use fenced code blocks with a language identifier.
- Prefer Mermaid for architecture and sequence diagrams.
- Keep Mermaid node labels short; quote labels containing punctuation.
- Add explanatory prose before or after each diagram.
- Use admonitions sparingly for warnings, misconceptions, and important operational notes.

## Code examples

- Target Python 3.11 or newer unless a module requires another language.
- Use `templates/example/` as the starting point.
- Keep dependencies minimal and pin only where reproducibility requires it.
- Include a README with the learning goal, setup, run command, expected output, and limitations.
- Never require real credentials for the default path. Use fakes or deterministic fixtures.
- Add tests for behavior that teaches an important invariant.

## Quality bar

Before considering a change complete:

- Confirm navigation and relative links are valid.
- Run `mkdocs build --strict` when documentation dependencies are installed.
- Run relevant example tests.
- Update `ROADMAP.md` when module status changes.
- Update the glossary when introducing durable terminology.
- Preserve learner-specific Q&A when revising a learning-journal page.
