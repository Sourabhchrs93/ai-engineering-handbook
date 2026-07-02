# Agents and tool use

An agent lets a model choose actions, observe results, and continue until it reaches a stopping condition. This is useful for open-ended workflows, but every additional step increases latency, cost, and the surface area for failure.

## Guardrails

- Give tools narrow schemas and least-privilege credentials.
- Separate read operations from consequential writes.
- Require confirmation for irreversible or high-impact actions.
- Cap steps, time, and spend.
- Validate tool arguments in code.
- Record decisions, tool calls, results, and termination reasons.

Prefer a deterministic workflow when the sequence is known. Use an agent where choosing the next step is genuinely part of the problem.

