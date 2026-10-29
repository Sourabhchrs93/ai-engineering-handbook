---
title: Cost and routing
prerequisites:
  - Latency, cost, and rate limits
  - Model selection
next:
  - Human approval
difficulty: intermediate
status: draft
---

# Cost and routing

## Learning objectives

After this chapter, you can:

- choose a routing strategy and validate it with evaluation;
- choose the right cache for each layer and avoid cache-based data leaks;
- enforce cost budgets per run and per tenant; and
- order cost optimizations by effort and impact.

## Mental model

> Spend the most capable model only where the evaluation shows it is needed, and measure cost per successful task.

## Why this exists

[Model selection](../foundations/model-selection.md) sets the baseline: the least expensive model that reliably clears the quality and safety thresholds. At scale, different steps of the same task often have different thresholds, and repeated work can be cached.

## Routing

Use routing only after a single-model baseline is measured. Routing adds another decision system that must itself be evaluated, observed, and maintained.

| Strategy | Example |
| --- | --- |
| By task | Small, fast model for classification and extraction; a frontier model for planning and complex reasoning |
| Cascade | Try the small model first; escalate when validation or confidence fails |
| Planner and executor | A frontier model plans; a cheaper model executes well-defined steps |
| By tier | Premium customers get the larger model |

Every routed path must pass the same evaluation suite for its task class.

## Caching

| Cache | What it stores | Watch out for |
| --- | --- | --- |
| Prompt (prefix) cache | Provider-side reuse of an identical prompt prefix | Keep stable content first; any change to the prefix invalidates it |
| Exact response cache | Response keyed by a hash of the prompt and parameters | Only for repeatable, non-personalized calls |
| Semantic cache | Answers to queries with similar embeddings | False hits, stale answers, and cross-user leaks; **must be scoped by tenant and permissions** |
| Tool-result cache | Results of expensive, idempotent reads | Time to live and invalidation |
| Embedding cache | Vectors for unchanged content | Key on content hash and model version |

## Cost budgets

- Attribute cost to every span, then roll it up per run, user, tenant, and feature (see [observability](observability.md)).
- Enforce **per-run** budgets in the agent loop (see [agents and tool use](../agents/agents-and-tool-use.md#action-budgets)) and **per-tenant** daily or monthly budgets with alerts and hard limits.
- Optimize in this order: fewer steps through better tools and instructions; smaller contexts through compaction and tool-result clearing; caching; cheaper models for sub-tasks; batch processing for offline work.
- Report **cost per successful task**, not cost per call.

## Common misconceptions

- **Misconception:** A semantic cache is a pure performance optimization.
  **Correction:** It can serve one user's answer to another. Scope it like any other data store.
- **Misconception:** The cheapest model per token is the cheapest system.
  **Correction:** More retries, longer outputs, and lower success rates can make it the most expensive per successful task.

## Production considerations

- Re-run the evaluation suite when routing thresholds change.
- Monitor routing distribution; a drift toward the expensive path signals a change in inputs or a regression.
- Track cache hit rate and the quality of cached answers separately.

## Interview questions

1. How can a semantic cache leak data across users, and how do you prevent it?
   <details><summary>Answer</summary>A similar question from another user retrieves an answer generated from documents the second user may not see. Key the cache by tenant and permission scope, exclude personalized answers, and set short lifetimes.</details>

## Exercises

1. Add a router that sends classification to a small model and planning to a large one. Run the evaluation suite through both paths and compare cost per successful task.
2. Add per-tenant cost tracking and a hard daily cap; test what users see when it is reached.

## References

- Anthropic, [Prompt caching](https://docs.claude.com/en/docs/build-with-claude/prompt-caching)
- Eugene Yan, [Patterns for building LLM-based systems and products](https://eugeneyan.com/writing/llm-patterns/)
