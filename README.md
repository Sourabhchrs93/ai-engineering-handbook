# AI Engineering Handbook

A first-principles guide to designing, building, evaluating, and operating AI systems.

This repository is a professional engineering handbook, not a collection of personal notes or framework recipes. It connects model fundamentals to the architectural and operational decisions required to build dependable AI applications.

## Who this is for

The primary audience is experienced software engineers—especially backend, platform, staff, and principal engineers—who want to develop rigorous AI engineering judgment without assuming a prior machine-learning specialization.

Readers should be comfortable with ordinary software architecture. AI-specific concepts are introduced from first principles and carried through to production trade-offs.

## Learning philosophy

The handbook follows four principles:

1. **Explain why before how.** Begin with the problem a mechanism solves.
2. **Build durable mental models.** Separate foundational ideas from vendor APIs and current product names.
3. **Connect theory to systems.** Include examples, failure modes, operational constraints, and design trade-offs.
4. **Earn complexity.** Start with the smallest viable architecture and introduce retrieval, tools, memory, planning, or multiple agents only when the problem requires them.

## Learning roadmap

The curriculum progresses through:

```text
Foundations
    ↓
Prompt Engineering
    ↓
Tool Calling
    ↓
RAG
    ↓
Memory
    ↓
Planning
    ↓
Single Agents
    ↓
Multi-Agent Systems
    ↓
Production AI
    ↓
MCP
    ↓
Capstone Projects
```

See [ROADMAP.md](ROADMAP.md) for learning outcomes and module status.

## Repository organization

```text
docs/
  foundations/   Models, tokens, embeddings, attention, and core architecture
  prompting/     Instructions, context construction, and in-context learning
  tool-calling/  Model-to-software interfaces and execution boundaries
  rag/           Retrieval, grounding, ranking, and citation
  memory/        Context, conversational state, and durable memory
  planning/      Workflows versus agents, ReAct, plan-and-execute, and graphs
  agents/        Planning, tool use, single agents, and multi-agent systems
  production/    Evaluation, reliability, security, observability, and operations
  mcp/           Model Context Protocol concepts and implementation guidance
  interview/     Senior-level review questions and answer standards
examples/        Minimal runnable demonstrations of individual mechanisms
projects/        End-to-end systems that combine multiple chapters
diagrams/        Standalone diagram sources that cannot live inside a chapter
templates/       Reusable chapter, diagram, example, and project structures
assets/          Static assets that cannot be expressed in text-native formats
```

The canonical navigable table of contents is [SUMMARY.md](SUMMARY.md). Important terminology is collected in [glossary.md](glossary.md).

## Navigate the handbook

- Begin with [Foundations](docs/foundations/index.md) if you are following the curriculum.
- Use [SUMMARY.md](SUMMARY.md) to browse every published chapter by domain.
- Use [ROADMAP.md](ROADMAP.md) to see the intended learning sequence and current progress.
- Use [glossary.md](glossary.md) for concise definitions.
- Consult each chapter's prerequisites and next-step metadata when present.

## Read locally

The documentation site uses [MkDocs Material](https://squidfunk.github.io/mkdocs-material/) and Python 3.11 or newer.

```bash
python3 -m venv .venv
source .venv/bin/activate
python3 -m pip install -e '.[docs]'
mkdocs serve
```

Open <http://127.0.0.1:8000>. Run the strict documentation build with:

```bash
mkdocs build --strict
```

## Contributing

Read [CONTRIBUTING.md](CONTRIBUTING.md) before proposing content. New chapters should follow [templates/chapter-template.md](templates/chapter-template.md), preserve first-principles depth, and include production consequences rather than only a happy-path explanation.

AI coding assistants must also follow [AGENTS.md](AGENTS.md).

## License

This project is available under the [MIT License](LICENSE).
