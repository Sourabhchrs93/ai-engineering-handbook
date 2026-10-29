# Model selection

Select a model against the workload, not a leaderboard in isolation. The best default is the least expensive model that reliably clears the quality and safety thresholds for the task.

## Decision dimensions

Evaluate candidates on a representative dataset across:

- task quality and instruction following;
- input and output modality;
- context requirements;
- tail latency and throughput;
- unit cost and expected retries;
- structured-output and tool-use reliability;
- privacy, residency, and deployment constraints.

Use routing only after a single-model baseline is measured. Routing adds another decision system that must itself be evaluated, observed, and maintained.

Routing strategies, caching, and cost budgets are covered in [cost and routing](../production/cost-and-routing.md). Unit costs and latency are explained in [latency, cost, and rate limits](latency-cost-and-rate-limits.md).
