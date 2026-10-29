# AI Engineering Handbook

Build AI systems that are useful in a demo, dependable in production, and understandable when they fail.

This handbook follows the lifecycle of an AI feature from problem framing through operations. It focuses on engineering decisions: what to measure, where nondeterminism enters the system, how to constrain it, and when a simpler approach wins.

The guided curriculum begins with [LLM fundamentals](foundations/llm-fundamentals.md). Its full sequence and current progress live in the repository-level `ROADMAP.md`.

## Start here

1. **Frame the task.** Define the user, decision, acceptable failure modes, and baseline before choosing a model.
2. **Build the smallest system.** Prefer a prompt and structured output before adding retrieval or an agent loop.
3. **Evaluate behavior.** Turn representative examples and known failures into a repeatable evaluation set.
4. **Operate the whole system.** Monitor quality, latency, cost, safety, and the data pipeline—not only model availability.

## Handbook map

| Area | Question it answers |
| --- | --- |
| [Foundations](foundations/index.md) | What primitives and trade-offs matter? |
| [Prompting](prompting/index.md) | How should model instructions and context be designed? |
| [Tool calling](tool-calling/index.md) | How does a model request deterministic work safely? |
| [RAG](rag/index.md) | How can responses be grounded in external evidence? |
| [Memory](memory/index.md) | What should each call see, and what should persist? |
| [Planning](planning/index.md) | Who sequences the work: code or the model? |
| [Agents](agents/index.md) | How can models select and use actions safely? |
| [Production](production/index.md) | How do we keep the system reliable and safe? |
| [Production readiness](production/production-readiness-review.md) | What should a team check before shipping? |

## Core reading

These primary sources underpin much of the handbook:

- Anthropic, [Building effective agents](https://www.anthropic.com/research/building-effective-agents)
- Anthropic, [Effective context engineering for AI agents](https://www.anthropic.com/engineering/effective-context-engineering-for-ai-agents)
- Anthropic, [Introducing Contextual Retrieval](https://www.anthropic.com/news/contextual-retrieval)
- OpenAI, [Why language models hallucinate](https://openai.com/index/why-language-models-hallucinate/)
- OWASP, [Top 10 for LLM Applications 2025](https://genai.owasp.org/llm-top-10/)
- LangGraph, [Durable execution](https://docs.langchain.com/oss/python/langgraph/durable-execution)
- Jay Alammar, [The Illustrated Transformer](https://jalammar.github.io/illustrated-transformer/)
- Chip Huyen, *AI Engineering* (O'Reilly, 2025)

!!! note "A living handbook"
    AI engineering changes quickly. Chapters should distinguish durable principles from provider-specific details and attach dates to claims that may drift.
