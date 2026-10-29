# Production readiness review

Use this checklist before an AI feature handles production traffic.

## Product and quality

- [ ] The user outcome and non-AI baseline are documented.
- [ ] Acceptance thresholds and unacceptable failures are explicit.
- [ ] An evaluation set covers representative and adversarial cases.
- [ ] A safe fallback or handoff exists.

## System

- [ ] Inputs and model outputs are validated.
- [ ] Timeouts, retry limits, and spend limits are configured.
- [ ] Tool permissions follow least privilege.
- [ ] Consequential writes require appropriate confirmation.

## Operations

- [ ] Quality, latency, cost, and safety signals are observable.
- [ ] Model, prompt, and knowledge-base versions are traceable.
- [ ] Rollback and provider-degradation paths have been exercised.
- [ ] On-call ownership and incident procedures are clear.

## Data and security

- [ ] Data classification, retention, and deletion are documented.
- [ ] Tenant boundaries and authorization are tested outside the model.
- [ ] Logs and traces exclude unnecessary sensitive data.
- [ ] Prompt-injection and exfiltration tests are included.

## Progressive rollout

Ship consequential agents in stages, widening autonomy only as measured error rates justify it:

1. **Shadow mode:** the agent runs on real traffic and proposes actions while people still act; compare its proposals with their decisions.
2. **Approval for everything:** the agent acts, but every write needs approval. Lower-risk tiers become autonomous as their metrics justify it (see [human approval](human-approval.md)).
3. **Canary:** internal users first, then a small share of low-risk tenants, then wider, with automatic rollback on guardrail metrics.
4. **Kill switches:** feature flags that disable the agent, or individual tools, immediately.

## Interview questions

### How do you safely deploy an agent when a small percentage of incorrect actions can have serious consequences?

<details markdown="1">
<summary>Answer</summary>

Reduce the probability of a wrong action, cap its impact, detect it quickly, and expand autonomy only with evidence.

1. **Define "incorrect" and measure it before launch.** Build an offline suite from real, edge, adversarial, and injection cases, graded on outcome and trajectory and run several times per case. Track pass^k and the harmful-action rate, not average accuracy, and set explicit launch criteria—for example, zero harmful actions on the critical subset (see [evaluation](evaluation.md)).
2. **Limit what the agent can do.** Least-privilege tools scoped to the user's identity; no general "run SQL" or "make HTTP request" tools; hard limits in code such as maximum refund, per-run quotas, rate limits, and allow-lists; deterministic validation and policy checks on every action. Remove the lethal trifecta for any run that reads untrusted content (see [security](security.md)).
3. **Make actions reversible or gated.** Prefer soft deletes, drafts, and staged changes; provide compensating actions; require precise, argument-bound approval for irreversible actions; use idempotency keys so retries never execute twice.
4. **Roll out progressively.** Shadow mode, then approval for everything, then canaries with automatic rollback, with kill switches throughout.
5. **Observe and respond.** Trace every run; alert on anomalies such as refund spikes or unusual tool sequences; sample human review and online grading; turn every incident into an evaluation case; keep audit logs and a runbook for reversing actions.
6. **Size controls to the cost of an error.** A 0.5% error rate on draft emails may be acceptable; on wire transfers it is not, so those stay approval-gated. Pin model versions and rerun the full suite before any model or prompt change.

The model will sometimes be wrong. The system's job is to make being wrong rare, cheap, visible, and reversible—and to widen autonomy only as the measured error rate earns it.

</details>
