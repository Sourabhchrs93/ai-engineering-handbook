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

