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

