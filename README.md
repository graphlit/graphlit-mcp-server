# Model Context Protocol (MCP) Server for Graphlit Platform
## Overview

The Model Context Protocol (MCP) Server enables integration between MCP clients and the Graphlit service. This document outlines the setup process and provides a basic example of using the client.

## Prerequisites

Before you begin, ensure you have the following:

- Node.js installed on your system (recommended version 14.x or higher).
- An active account on the [Graphlit Platform](https://portal.graphlit.dev) with access to the API settings dashboard.

## Installation

To install the Graphlit MCP Server, use npx:

```bash
npx install graphlit-mcp-server
```

To use the Graphlit MCP Server in Claude Desktop application, use:

```
{
    "mcpServers": {
        "graphlit-mcp-server": {
            "command": "npx",
            "args": [
				"-y",
                "graphlit-mcp-server"
            ],
            "env": {
                "GRAPHLIT_ORGANIZATION_ID": "your-organization-id",
                "GRAPHLIT_ENVIRONMENT_ID": "your-environment-id",
                "GRAPHLIT_JWT_SECRET": "your-jwt-secret",
            }
        }
    }
}
```

Optionally, you can configure the credentials for data connectors, such as Slack, Google Email and Notion.

```
{
    "mcpServers": {
        "graphlit-mcp-server": {
            "command": "npx",
            "args": [
                "-y",
                "graphlit-mcp-server"
            ],
            "env": {
                "GRAPHLIT_ORGANIZATION_ID": "your-organization-id",
                "GRAPHLIT_ENVIRONMENT_ID": "your-environment-id",
                "GRAPHLIT_JWT_SECRET": "your-jwt-secret",
                "SLACK_BOT_TOKEN": "your-slack-bot-token",
                "DISCORD_BOT_TOKEN": "your-discord-bot-token",
                "GOOGLE_EMAIL_REFRESH_TOKEN": "your-google-refresh-token",
                "GOOGLE_EMAIL_CLIENT_ID": "your-google-client-id",
                "GOOGLE_EMAIL_CLIENT_SECRET": "your-google-client-secret",
                "LINEAR_API_KEY": "your-linear-api-key",
                "GITHUB_PERSONAL_ACCESS_TOKEN": "your-github-pat",
                "NOTION_API_KEY": "your-notion-api-key",
                "NOTION_DATABASE_ID": "your-notion-database-id"
            }
        }
    }
}
```

## Configuration

The Graphlit MCP Server supports environment variables to be set for authentication and configuration:

- `GRAPHLIT_ENVIRONMENT_ID`: Your environment ID.
- `GRAPHLIT_ORGANIZATION_ID`: Your organization ID.
- `GRAPHLIT_JWT_SECRET`: Your JWT secret for signing the JWT token.

You can find these values in the API settings dashboard on the [Graphlit Platform](https://portal.graphlit.dev).

## Support

Please refer to the [Graphlit API Documentation](https://docs.graphlit.dev/).

For support with the Graphlit Client, please submit a [GitHub Issue](https://github.com/graphlit/graphlit-mcp-server/issues).  

For further support with the Graphlit Platform, please join our [Discord](https://discord.gg/ygFmfjy3Qx) community.
