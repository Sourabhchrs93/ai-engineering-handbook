# Evaluation

Evaluation turns "this seems better" into an engineering decision. A useful suite contains representative requests, difficult edge cases, and every important production failure that should not recur.

## Evaluation stack

| Layer | Purpose |
| --- | --- |
| Deterministic checks | Validate schemas, citations, permissions, and invariants |
| Task metrics | Measure correctness against labels or executable outcomes |
| Rubric grading | Score qualities such as completeness or tone |
| Human review | Resolve ambiguity and calibrate automated graders |
| Online signals | Observe real behavior, including latency, cost, and user success |

Pin model and prompt versions, record evaluation inputs, and compare changes against the same dataset. Treat model-based graders as measurement instruments: calibrate them against human judgment and test for bias.

