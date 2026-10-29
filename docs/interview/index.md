# Interview preparation

Interview preparation is integrated with learning rather than maintained as disconnected trivia. Each chapter includes concise questions that test its core mental models and production trade-offs.

## Module 1 prompts

Use these questions to practice explaining the mechanism rather than reciting definitions:

1. Why are token IDs insufficient as model inputs?
2. What is the difference between a static embedding and a contextual representation?
3. What problem does self-attention solve?
4. Why can a fluent LLM response still be factually wrong?
5. What system components are required to answer a question using live data?

Answers and deeper explanations are in [LLM fundamentals](../foundations/llm-fundamentals.md#interview-ready-answers).

## Design checkpoints

Each checkpoint has a full model answer in its chapter. Answer aloud before opening it.

| Module | Question | Answer |
| --- | --- | --- |
| 1 | Why can't you treat an LLM as a deterministic function? | [Failure modes and nondeterminism](../foundations/failure-modes-and-nondeterminism.md#interview-questions) |
| 4 | How would you design a multi-tenant RAG platform where users must never retrieve another tenant's documents? | [Multi-tenant RAG](../rag/multi-tenant-rag.md#interview-questions) |
| 5 | How do you resume an agent after a worker crashes without repeating a payment or other irreversible action? | [Checkpointing and recovery](../memory/checkpointing-and-recovery.md#interview-questions) |
| 7 | What happens when an agent calls the wrong tool, or a tool succeeds but its response is lost? | [Agents and tool use](../agents/agents-and-tool-use.md#interview-questions) |
| 9 | How do you safely deploy an agent when a small percentage of incorrect actions can have serious consequences? | [Production readiness review](../production/production-readiness-review.md#interview-questions) |

Shorter practice questions with answers appear at the end of every chapter.

## Answer standard

A strong senior-level answer should:

- begin with the problem the mechanism solves;
- explain the mechanism without hiding behind framework terminology;
- name at least one limitation or trade-off; and
- connect the concept to a production design decision.
