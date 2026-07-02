# Prompt engineering

A production prompt is an interface contract. It should state the task, relevant context, constraints, and output shape clearly enough to test and version.

## Practical pattern

1. Put stable role and policy instructions first.
2. Separate trusted instructions from untrusted user or retrieved content.
3. Specify the output schema and behavior for missing information.
4. Include examples only when they improve measured performance.
5. Version the prompt with the code and evaluation results it affects.

Avoid relying on phrasing alone for hard guarantees. Enforce permissions, schemas, ranges, and business rules in deterministic code.

