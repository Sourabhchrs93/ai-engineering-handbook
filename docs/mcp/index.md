# Model Context Protocol

Model Context Protocol (MCP) belongs later in the curriculum, after tool calling, retrieval, memory, and agent control loops. That order keeps protocol mechanics connected to the architectural problems they solve.

This section will cover MCP architecture, servers, clients, tools, resources, prompts, trust boundaries, and production deployment.

MCP standardizes how tools, resources, and prompts are exposed to models so one server can serve many clients. It changes how tools are packaged and discovered, not the validation and authorization responsibilities in [tool calling](../tool-calling/tool-calling.md). Per-user authorization for MCP servers is discussed in [security and privacy](../production/security.md#tenant-isolation-and-authorization). The specification lives at [modelcontextprotocol.io](https://modelcontextprotocol.io/).
