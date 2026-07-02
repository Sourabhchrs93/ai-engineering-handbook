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

