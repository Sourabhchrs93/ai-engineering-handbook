# Retrieval-augmented generation

Retrieval-augmented generation (RAG) supplies a model with evidence selected at request time. Use it when answers depend on a changing or private knowledge base and the application can identify supporting passages.

## The retrieval loop

```text
ingest -> normalize -> chunk -> index -> retrieve -> rerank -> answer -> cite
```

Evaluate retrieval separately from generation. Useful retrieval measures include recall at *k*, ranking quality, freshness, and permission correctness. Then evaluate whether the generator uses the evidence faithfully and abstains when support is missing.

Common failures include chunks without enough context, stale indexes, permission leaks, and confident answers assembled from irrelevant passages.

