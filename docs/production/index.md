# Production

Production readiness means the entire AI feature behaves acceptably under load, dependency failures, adversarial inputs, and changing data—not merely that the model endpoint responds.

Track at least:

- task success and fallback rate;
- latency by pipeline stage and percentile;
- token, tool, and infrastructure cost per successful task;
- policy violations and blocked actions;
- retrieval quality and data freshness;
- model, prompt, and index versions.

See [reliability](reliability.md), [security and privacy](security.md), and the [production readiness review](../playbooks/production-readiness.md).

