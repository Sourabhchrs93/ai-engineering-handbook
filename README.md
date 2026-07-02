# AI Engineering Handbook

A practical, vendor-neutral guide to designing, building, evaluating, and operating production AI systems.

The guided AI Agents Masterclass is designed for experienced backend engineers. It moves from [LLM fundamentals](docs/foundations/llm-fundamentals.md) to tools, retrieval, planning, multi-agent systems, and production architecture. See [ROADMAP.md](ROADMAP.md) for the full sequence.

## Quick start

This project uses [MkDocs Material](https://squidfunk.github.io/mkdocs-material/) and Python 3.11+.

```bash
python -m venv .venv
source .venv/bin/activate
python -m pip install -e '.[docs]'
mkdocs serve
```

Open <http://127.0.0.1:8000> to view the handbook. To perform the same strict build used in CI:

```bash
mkdocs build --strict
```

## Repository layout

```text
docs/
  foundations/     Core concepts and model selection
  building/        Prompting, retrieval, agents, and structured output
  evaluation/      Evaluation strategy and test design
  production/      Reliability, observability, security, and cost
  playbooks/       Reusable implementation checklists
  contributing.md  Writing and contribution conventions
examples/           Minimal runnable concept demonstrations
projects/           Progressive end-to-end agent systems
templates/          Chapter and code-example templates
AGENTS.md            Repository-wide authoring instructions
ROADMAP.md           Curriculum sequence and progress
mkdocs.yml          Site navigation and configuration
```

## Contributing

Start with [AGENTS.md](AGENTS.md) and the [contribution guide](docs/contributing.md). Keep chapters practical, cite primary sources, and include concrete failure modes alongside the happy path.
