# Module 1 learning journal: Q&A and insights

This page preserves the learner's initial mental models and the corrections produced through Socratic review. It complements the canonical [LLM fundamentals](../foundations/llm-fundamentals.md) chapter.

## Why are tokens different from words?

**Initial answer:** A token is a normalized word.

**Final understanding:** A token is whatever unit the tokenizer outputs. It may be a word, word fragment, punctuation, whitespace, or another text fragment. Tokenization is not normalization.

## Why convert token IDs into embeddings?

**Initial answer:** LLMs work mathematically and need vectors.

**Refined understanding:** Token IDs are arbitrary labels and their numeric distance means nothing. Embeddings provide learned continuous representations in which the network can express useful semantic relationships.

## What problem does self-attention solve?

**Initial answer:** It finds correlations between vectors.

**Refined understanding:** Self-attention determines which surrounding tokens are relevant when constructing each token's representation in the current context.

## Why do LLMs hallucinate?

**Initial answer:** Limited context and vector-based reasoning make external support necessary.

**Refined understanding:** The root issue is that the model is optimized for likely next-token prediction, not fact verification. Better context helps, while retrieval, tools, and validation provide grounding.

## How do agents answer questions about live data?

**Answer:** An agent selects a database, API, search, or other tool; places the returned data into fresh context; and asks the LLM to interpret or present it.

```text
planner -> tool -> fresh context -> LLM
```

## Why use a Transformer if embeddings already exist?

**Initial answer:** Embeddings are static while Transformers reason over them.

**Refined understanding:** The initial embedding is static. Repeated attention and feed-forward layers transform it into a context-dependent representation, allowing the same token to carry different meanings in different sentences.

## Biggest corrections

| Earlier model | Improved model |
| --- | --- |
| Token equals normalized word | Token equals tokenizer output |
| Embeddings understand language completely | Embeddings provide a semantic starting point |
| Attention is memory | Attention constructs context-dependent relationships |
| Hallucination comes only from missing context | The generation objective does not guarantee factual verification |
| The model should know current facts | Current facts require tools or retrieval |

## Questions to revisit

- How are embeddings learned during training?
- What are queries, keys, and values mathematically?
- How does multi-head attention learn different relationships?
- How do positional representations preserve order?
- How does instruction tuning change model behavior?

