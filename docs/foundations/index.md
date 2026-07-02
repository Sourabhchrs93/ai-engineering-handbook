# Foundations

AI engineering combines ordinary software engineering with probabilistic components. The model is only one part of the system; prompts, context assembly, tools, policies, user experience, and feedback loops determine the result users see.

## Core principles

- Begin with a measurable user outcome and a non-AI baseline.
- Treat model output as untrusted input: validate, constrain, and observe it.
- Add architectural complexity only when evaluation results justify it.
- Design fallbacks for model, dependency, and data failures.
- Preserve the evidence needed to reproduce important decisions.

Begin with [LLM fundamentals](llm-fundamentals.md), then continue with [model selection](model-selection.md).
