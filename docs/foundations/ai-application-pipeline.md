# Building AI applications

Most production applications can be understood as a pipeline:

```text
user input -> policy checks -> context assembly -> model -> validation -> action or response
```

Build and evaluate each boundary independently. Begin with [prompt engineering](../prompting/prompt-engineering.md), add [retrieval](../rag/retrieval-augmented-generation.md) when the task needs external knowledge, and introduce [agents](../agents/agents-and-tool-use.md) only when a model must choose among actions over multiple steps. [Planning](../planning/planning.md) helps decide whether a fixed workflow is enough.
