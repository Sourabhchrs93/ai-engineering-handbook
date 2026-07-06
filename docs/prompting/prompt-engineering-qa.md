# Module 2 learning journal: Q&A and insights

This page preserves the learner's initial mental models and the corrections produced through Socratic review. It complements the canonical [Prompt engineering and in-context learning](prompt-engineering.md) chapter.

## Why does a prompt work at all?

**Initial answer:** A prompt tells the model what to do, like a command.

**Refined understanding:** A prompt is context, not a command. The model still only predicts the next token; the prompt reshapes the probability distribution over continuations. It conditions generation rather than reprogramming a rule-following system.

## Why does "You are a CTO" change the output?

**Initial answer:** The model adopts the persona and answers as that person.

**Refined understanding:** The role narrows the probability distribution toward regions of the training data associated with that role, making that framing and vocabulary more likely. It does not add knowledge or grant authority; it makes an output more probable, not guaranteed.

## What do few-shot examples actually do?

**Initial answer:** Examples teach the model new information.

**Refined understanding:** Examples demonstrate a pattern and format so the model applies its pretrained knowledge the way you want. This is in-context learning: adaptation with no weight update.

## Can more examples make results worse?

**Answer:** Yes. Too many or unrepresentative examples over-constrain the model. It can fixate on superficial features—length, phrasing, ordering—and generalize worse on inputs that differ from the samples.

## Why not just prompt the model to do math or SQL correctly?

**Refined understanding:** LLMs are pattern predictors, not calculators or rule engines. They produce plausible-looking output, not guaranteed-correct output. Deterministic tasks belong in tools; the model should consume the tool's result as context.

```text
model decides what to do -> tool performs the exact step -> result returned as context
```

## Biggest corrections

| Earlier model | Improved model |
| --- | --- |
| A prompt is a command | A prompt is context that conditions the distribution |
| A persona gives the model knowledge or authority | A persona narrows framing toward an associated region of the distribution |
| More examples always help | Excess or unrepresentative examples over-constrain and can hurt |
| Better wording gives hard guarantees | Guarantees come from schemas, validation, and code |
| Prompting can fix exact math or SQL | Deterministic work belongs in tools |

## Questions to revisit

- How do you measure whether a prompt change actually improved behavior?
- How should trusted instructions be separated from untrusted user or retrieved content?
- How do you choose representative few-shot examples systematically?
- Where is the boundary between prompt logic and application code?
- How does instruction tuning change how a model responds to prompts?
