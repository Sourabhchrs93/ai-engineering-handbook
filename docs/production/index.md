# Production

Production readiness means the entire AI feature behaves acceptably under load, dependency failures, adversarial inputs, and changing data—not merely that the model endpoint responds.

The model is a probabilistic component inside a deterministic system. It cannot be made perfect, so the system around it must measure how often it is wrong, show why, limit the damage, and involve people where mistakes are expensive.

Track at least:

- task success and fallback rate;
- latency by pipeline stage and percentile;
- token, tool, and infrastructure cost per successful task;
- policy violations and blocked actions;
- retrieval quality and data freshness;
- model, prompt, and index versions.

Tool-level and end-to-end metric definitions are in [evaluation](evaluation.md#tool-level-and-end-to-end-metrics).

See [evaluation](evaluation.md), [observability](observability.md), [reliability](reliability.md), [security and privacy](security.md), [cost and routing](cost-and-routing.md), [human approval](human-approval.md), and the [production readiness review](production-readiness-review.md).
