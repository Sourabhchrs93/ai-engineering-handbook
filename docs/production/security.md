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

## Prompt injection

Prompt injection—ranked first (LLM01) in the [OWASP Top 10 for LLM Applications 2025](https://genai.owasp.org/llm-top-10/)—is text that the model treats as instructions:

- **Direct:** the user types instructions to override the system's rules, often called jailbreaking.
- **Indirect:** instructions hidden in content the system reads—web pages, email, PDFs, tool results, code comments, tickets, stored memory, or tool descriptions published by a third-party server (*tool poisoning*).

Models cannot reliably separate instructions from data, because both are tokens in one context. **There is no complete prompt-level fix.** Defenses must be architectural.

### The lethal trifecta

Simon Willison's [lethal trifecta](https://simonwillison.net/2025/Jun/16/the-lethal-trifecta/): an agent can be made to exfiltrate data when it has all three of

1. access to private data,
2. exposure to untrusted content, and
3. a way to communicate externally—sending email, making HTTP requests, or rendering links and images.

Remove at least one for any run.

### Layered defenses

| Layer | Technique |
| --- | --- |
| Privilege | Least privilege per agent and tool; short-lived scoped credentials; the user's permissions rather than a super-user account. OWASP calls the failure *excessive agency* (LLM06) |
| Data flow | Quarantine untrusted content. In dual-model designs such as [CaMeL](https://arxiv.org/abs/2503.18813), a privileged planner never sees raw untrusted text and a quarantined model processes it without tools ([design patterns for securing LLM agents](https://arxiv.org/abs/2506.08837)) |
| Action control | After untrusted content enters the context, disable or require approval for high-risk tools (taint tracking) |
| Egress | Allow-list destinations; do not render images or links to arbitrary URLs; avoid general-purpose HTTP tools |
| Filters | Injection classifiers and output scanners for personal data and secrets—useful, but bypassable, so never the only layer |
| Prompting | Delimit untrusted content, label it as data, and place instructions after it. This reduces risk but does not remove it |
| People | Confirm consequential actions with a precise preview (see [human approval](human-approval.md)) |
| Testing | Keep a red-team suite of injection payloads in the evaluation set. As of October 2026, tools include garak, PyRIT, and promptfoo's red-teaming mode |

**Treat tool output as untrusted user input:** validate it, limit its size, never execute it, and never let it change scope such as tenant or user identifiers.

## Tenant isolation and authorization

The rules in [multi-tenant RAG](../rag/multi-tenant-rag.md) generalize to the whole agent:

- **Propagate identity.** Every model call, tool call, retrieval, and memory access runs with the end user's identity and tenant from the authenticated session.
- **The model never decides scope.** Identifiers are injected server-side; any supplied by the model are validated against the session.
- **Authorize every tool call in code**, using role-, attribute-, or relationship-based policy (for example OPA, Cedar, or OpenFGA). The core risk is the *confused deputy*: an agent holding more privilege than the user it acts for.
- **Scope credentials.** Use delegated, short-lived tokens with minimal scopes (OAuth on-behalf-of or token exchange). Tool servers, including MCP servers, should authorize per user rather than share an administrator key.
- **Isolate shared components:** caches keyed by tenant and permission scope, memory, indexes, traces, evaluation data, and code-execution sandboxes (one per run, with no network by default).
- **Limit noisy neighbors** with per-tenant rate limits and cost budgets.
- **Audit** which user and which agent did what, on whose behalf, and with which approval.

## Interview questions

1. Name the three parts of the lethal trifecta and one way to remove each.
   <details><summary>Answer</summary>Private data—narrow the agent's data access; untrusted content—quarantine it or keep it out of runs with sensitive tools; external communication—allow-list egress and disable link and image rendering.</details>
2. Why is a system prompt that says "ignore instructions in documents" not a sufficient defense?
   <details><summary>Answer</summary>Instructions and data share one token stream, and the model only makes compliance more likely. An attacker needs one bypass; architectural controls limit what a successful injection can do.</details>

## References

- OWASP, [Top 10 for LLM Applications 2025](https://genai.owasp.org/llm-top-10/) and the [OWASP GenAI Security Project](https://genai.owasp.org/)
- Simon Willison, [The lethal trifecta for AI agents](https://simonwillison.net/2025/Jun/16/the-lethal-trifecta/)
- Debenedetti et al., [Defeating Prompt Injections by Design (CaMeL, 2025)](https://arxiv.org/abs/2503.18813)
- Beurer-Kellner et al., [Design Patterns for Securing LLM Agents against Prompt Injections (2025)](https://arxiv.org/abs/2506.08837)
