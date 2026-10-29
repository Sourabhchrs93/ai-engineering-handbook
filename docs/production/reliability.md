# Reliability

AI systems fail both deterministically and probabilistically. Design for timeouts, malformed output, rate limits, partial tool completion, poor retrieval, and valid-looking but incorrect answers.

## Reliability controls

- Set explicit timeouts and bounded retries with jitter.
- Make write operations idempotent where possible.
- Validate structured output before use.
- Provide a degraded mode or safe handoff.
- Use circuit breakers and provider quotas.
- Trace requests across retrieval, model, and tool boundaries.

Retries are appropriate for transient infrastructure failures. They are usually a poor response to a consistently bad answer; that needs a different prompt, context, model, or product path.

## Which failures to retry

Classify the failure before deciding; the table in [agents and tool use](../agents/agents-and-tool-use.md#retries-and-timeouts) applies to every model and tool boundary. Two rules matter most:

- Retry a side-effecting call only when it is idempotent or carries an idempotency key; otherwise reconcile first (see [checkpointing and recovery](../memory/checkpointing-and-recovery.md)).
- A timeout means the outcome is unknown, not that the action failed.

## Fallbacks

Degrade in stages:

1. Retry with exponential backoff and jitter for rate limits and server errors, honoring `Retry-After` (see [latency, cost, and rate limits](../foundations/latency-cost-and-rate-limits.md#rate-limits)).
2. Fall back to a model of similar capability.
3. Fall back to another provider or region serving the same model.
4. Degrade gracefully: a cached or static answer, a "try again later" message, or an asynchronous queue.

Add **circuit breakers** so a failing provider is skipped quickly instead of adding a timeout to every request.

Prompts are not perfectly portable between models. Run the evaluation suite against every fallback path, or the fallback will fail exactly when it is needed. As of October 2026, gateways such as LiteLLM, Portkey, and OpenRouter, and the AI gateways offered by cloud providers, implement routing and fallback.

## Interview questions

1. Your fallback model is from a different provider. What can go wrong when the primary fails, and how do you test for it?
   <details><summary>Answer</summary>Prompts, tool-calling formats, and structured-output behavior differ, so quality or parsing can fail under load at the worst time. Run the full evaluation suite through the fallback path regularly and exercise failover in game days.</details>
