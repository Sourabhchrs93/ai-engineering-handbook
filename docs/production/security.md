# Security and privacy

Treat prompts, retrieved documents, model output, and tool results as untrusted data. A model interpreting text does not turn that text into an authorized instruction.

## Minimum controls

- Enforce authorization outside the model.
- Give tools least-privilege access and short-lived credentials.
- Isolate instructions from user and retrieved content.
- Minimize sensitive data sent to providers and logs.
- Validate and encode output at its destination.
- Add human approval for consequential actions.
- Test prompt injection, data exfiltration, and cross-tenant access.

Document retention, deletion, residency, and incident-response paths before handling production data.

