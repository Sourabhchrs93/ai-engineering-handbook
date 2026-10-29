# Glossary

## Agent

A system in which a model participates in a bounded loop that can select actions, observe results, maintain relevant state, and decide when to stop.

## Attention

A mechanism that weights and combines information across token positions to construct context-dependent representations.

## BM25

A keyword-ranking function that scores documents by term frequency, weighted by how rare each term is across the corpus.

## Checkpoint

A durable snapshot of a run's state after a step, used to resume, inspect, or pause the run.

## Compaction

Replacing a long conversation history with a dense summary so a run can continue within the context window.

## Constrained decoding

Masking tokens during sampling so the output must conform to a schema or grammar.

## Context engineering

Selecting the smallest set of high-signal tokens to send to a model on each call.

## Context window

The bounded sequence of tokens available to a model for a single inference operation.

## Contextual representation

A token vector after Transformer processing, shaped by the token's surrounding context.

## Cross-encoder reranker

A model that reads a query and a candidate document together to score relevance; accurate but too slow to apply to a whole corpus.

## Durable execution

Running a workflow so that completed steps are recorded and not re-executed after a crash or restart.

## Embedding

A learned dense vector used as a continuous representation of a discrete item such as a token.

## Hallucination

Generated content that is unsupported or incorrect despite appearing fluent or plausible.

## Hybrid retrieval

Combining keyword and vector search results, typically with reciprocal rank fusion.

## Idempotency key

A deterministic identifier for a logical action that lets a receiver recognize and ignore duplicate requests.

## Inference

Running a trained model to produce predictions or generated output.

## KV cache

Stored attention keys and values for earlier positions, reused so each new token does not recompute the whole sequence.

## Large language model

A neural language model trained at scale to predict tokens from context.

## Lethal trifecta

The combination of private-data access, exposure to untrusted content, and external communication that lets prompt injection exfiltrate data.

## Memory

Application-managed information retained or retrieved beyond the model's immediate computation, such as conversation history, durable state, or stored knowledge.

## Model Context Protocol

A protocol for connecting AI applications to external tools and context sources through defined client-server interfaces.

## pass^k

The share of tasks an agent completes successfully in all of *k* repeated runs; a reliability measure. Compare pass@k, success in at least one run.

## Planner

The component or policy that determines which step or action should occur next in a multi-step AI workflow.

## Prompt caching

Provider-side reuse of computation for an identical prompt prefix, reducing cost and time to first token.

## Prompt injection

Text that causes a model to follow instructions the system did not intend, supplied directly by a user or indirectly through content the system reads.

## ReAct

An agent pattern that interleaves reasoning, an action, and an observation at each step.

## Recall at k

The share of queries for which a relevant item appears in the top *k* results.

## Reciprocal rank fusion

A method for merging ranked lists by summing 1 / (k + rank) for each document across lists.

## Retrieval-augmented generation

A pattern that retrieves external evidence at request time and supplies it to a generative model as context.

## Temperature

A sampling parameter that divides logits before softmax; lower values make the most likely token more dominant.

## Time to first token

The delay between sending a request and receiving the first output token; dominated by input processing.

## Token

A unit emitted by a tokenizer and processed by a language model.

## Token ID

An integer that identifies a token in a model's vocabulary; the number itself has no semantic meaning.

## Tool calling

A pattern in which a model produces a structured request for application code to validate and execute against a defined tool interface.

## Transformer

A neural-network architecture built around attention and feed-forward layers that constructs contextual representations.

## Workflow

A multi-step system whose control flow is defined in code, with models used inside individual steps.
