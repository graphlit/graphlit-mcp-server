[![MseeP.ai Security Assessment Badge](https://mseep.net/pr/graphlit-graphlit-mcp-server-badge.png)](https://mseep.ai/app/graphlit-graphlit-mcp-server)

[![npm version](https://badge.fury.io/js/graphlit-mcp-server.svg)](https://badge.fury.io/js/graphlit-mcp-server)
[![smithery badge](https://smithery.ai/badge/@graphlit/graphlit-mcp-server)](https://smithery.ai/server/@graphlit/graphlit-mcp-server)

# Model Context Protocol (MCP) Server for Graphlit Platform

## Overview

The Model Context Protocol (MCP) Server enables integration between MCP clients and the Graphlit service. This document outlines the setup process and provides a basic example of using the client.

Ingest anything from Slack, Discord, websites, Google Drive, email, Jira, Linear or GitHub into a Graphlit project - and then search and retrieve relevant knowledge within an MCP client like Cursor, Windsurf, Goose or Cline.

Your Graphlit project acts as a searchable, and RAG-ready knowledge base across all your developer and product management tools.

Documents (PDF, DOCX, PPTX, etc.) and HTML web pages will be extracted to Markdown upon ingestion. Audio and video files will be transcribed upon ingestion.

Web crawling and web search are built-in as MCP tools, with no need to integrate other tools like Firecrawl, Exa, etc. separately.

You can read more about the MCP Server use cases and features on our [blog](https://www.graphlit.com/blog/graphlit-mcp-server).

Watch our latest [YouTube video](https://www.youtube.com/watch?v=Or-QqonvcAs&t=4s) on using the Graphlit MCP Server with the Goose MCP client.

For any questions on using the MCP Server, please join our [Discord](https://discord.gg/ygFmfjy3Qx) community and post on the #mcp channel.

<a href="https://glama.ai/mcp/servers/fscrivteod">
  <img width="380" height="200" src="https://glama.ai/mcp/servers/fscrivteod/badge" alt="graphlit-mcp-server MCP server" />
</a>

## Tools

### Retrieval

- Query Contents
- Query Collections
- Query Feeds
- Query Conversations
- Retrieve Relevant Sources
- Retrieve Similar Images
- Visually Describe Image

### RAG

- Prompt LLM Conversation

### Extraction

- Extract Structured JSON from Text

### Publishing

- Publish as Audio (ElevenLabs Audio)
- Publish as Image (OpenAI Image Generation)

### Ingestion

- Files
- Web Pages
- Messages
- Posts
- Emails
- Issues
- Text
- Memory (Short-Term)

### Data Connectors

- Microsoft Outlook email
- Google Mail
- Notion
- Reddit
- Linear
- Jira
- GitHub Issues
- Google Drive
- OneDrive
- SharePoint
- Dropbox
- Box
- GitHub
- Slack
- Microsoft Teams
- Discord
- Twitter/X
- Podcasts (RSS)

### Web

- Web Crawling
- Web Search (including Podcast Search)
- Web Mapping
- Screenshot Page

### Notifications

- Slack
- Email
- Webhook
- Twitter/X

### Operations

- Configure Project
- Create Collection
- Add Contents to Collection
- Remove Contents from Collection
- Delete Collection(s)
- Delete Feed(s)
- Delete Content(s)
- Delete Conversation(s)
- Is Feed Done?
- Is Content Done?

### Enumerations

- List Slack Channels
- List Microsoft Teams Teams
- List Microsoft Teams Channels
- List SharePoint Libraries
- List SharePoint Folders
- List Linear Projects
- List Notion Databases
- List Notion Pages
- List Dropbox Folders
- List Box Folders
- List Discord Guilds
- List Discord Channels
- List Google Calendars
- List Microsoft Calendars

## Resources

- Project
- Contents
- Feeds
- Collections (of Content)
- Workflows
- Conversations
- Specifications

## Prerequisites

Before you begin, ensure you have the following:

- Node.js installed on your system (recommended version 18.x or higher).
- An active account on the [Graphlit Platform](https://portal.graphlit.dev) with access to the API settings dashboard.

## Configuration

The Graphlit MCP Server supports environment variables to be set for authentication and configuration:

- `GRAPHLIT_ENVIRONMENT_ID`: Your environment ID.
- `GRAPHLIT_ORGANIZATION_ID`: Your organization ID.
- `GRAPHLIT_JWT_SECRET`: Your JWT secret for signing the JWT token.

You can find these values in the API settings dashboard on the [Graphlit Platform](https://portal.graphlit.dev).

## Installation

### Installing via VS Code

For quick installation, use one of the one-click install buttons below:

[![Install with NPX in VS Code](https://img.shields.io/badge/VS_Code-NPM-0098FF?style=flat-square&logo=visualstudiocode&logoColor=white)](https://insiders.vscode.dev/redirect/mcp/install?name=graphlit&inputs=%5B%7B%22type%22%3A%22promptString%22%2C%22id%22%3A%22organization_id%22%2C%22description%22%3A%22Graphlit%20Organization%20ID%22%2C%22password%22%3Atrue%7D%2C%7B%22type%22%3A%22promptString%22%2C%22id%22%3A%22environment_id%22%2C%22description%22%3A%22Graphlit%20Environment%20ID%22%2C%22password%22%3Atrue%7D%2C%7B%22type%22%3A%22promptString%22%2C%22id%22%3A%22jwt_secret%22%2C%22description%22%3A%22Graphlit%20JWT%20Secret%22%2C%22password%22%3Atrue%7D%5D&config=%7B%22command%22%3A%22npx%22%2C%22args%22%3A%5B%22-y%22%2C%22graphlit-mcp-server%22%5D%2C%22env%22%3A%7B%22GRAPHLIT_ORGANIZATION_ID%22%3A%22%24%7Binput%3Aorganization_id%7D%22%2C%22GRAPHLIT_ENVIRONMENT_ID%22%3A%22%24%7Binput%3Aenvironment_id%7D%22%2C%22GRAPHLIT_JWT_SECRET%22%3A%22%24%7Binput%3Ajwt_secret%7D%22%7D%7D) [![Install with NPX in VS Code Insiders](https://img.shields.io/badge/VS_Code_Insiders-NPM-24bfa5?style=flat-square&logo=visualstudiocode&logoColor=white)](https://insiders.vscode.dev/redirect/mcp/install?name=graphlit&inputs=%5B%7B%22type%22%3A%22promptString%22%2C%22id%22%3A%22organization_id%22%2C%22description%22%3A%22Graphlit%20Organization%20ID%22%2C%22password%22%3Atrue%7D%2C%7B%22type%22%3A%22promptString%22%2C%22id%22%3A%22environment_id%22%2C%22description%22%3A%22Graphlit%20Environment%20ID%22%2C%22password%22%3Atrue%7D%2C%7B%22type%22%3A%22promptString%22%2C%22id%22%3A%22jwt_secret%22%2C%22description%22%3A%22Graphlit%20JWT%20Secret%22%2C%22password%22%3Atrue%7D%5D&config=%7B%22command%22%3A%22npx%22%2C%22args%22%3A%5B%22-y%22%2C%22graphlit-mcp-server%22%5D%2C%22env%22%3A%7B%22GRAPHLIT_ORGANIZATION_ID%22%3A%22%24%7Binput%3Aorganization_id%7D%22%2C%22GRAPHLIT_ENVIRONMENT_ID%22%3A%22%24%7Binput%3Aenvironment_id%7D%22%2C%22GRAPHLIT_JWT_SECRET%22%3A%22%24%7Binput%3Ajwt_secret%7D%22%7D%7D&quality=insiders)

For manual installation, add the following JSON block to your User Settings (JSON) file in VS Code. You can do this by pressing `Ctrl + Shift + P` and typing `Preferences: Open User Settings (JSON)`.

Optionally, you can add it to a file called `.vscode/mcp.json` in your workspace. This will allow you to share the configuration with others.

> Note that the `mcp` key is not needed in the `.vscode/mcp.json` file.

```json
{
  "mcp": {
    "inputs": [
      {
        "type": "promptString",
        "id": "organization_id",
        "description": "Graphlit Organization ID",
        "password": true
      },
      {
        "type": "promptString",
        "id": "environment_id",
        "description": "Graphlit Environment ID",
        "password": true
      },
      {
        "type": "promptString",
        "id": "jwt_secret",
        "description": "Graphlit JWT Secret",
        "password": true
      }
    ],
    "servers": {
      "graphlit": {
        "command": "npx",
        "args": ["-y", "graphlit-mcp-server"],
        "env": {
          "GRAPHLIT_ORGANIZATION_ID": "${input:organization_id}",
          "GRAPHLIT_ENVIRONMENT_ID": "${input:environment_id}",
          "GRAPHLIT_JWT_SECRET": "${input:jwt_secret}"
        }
      }
    }
  }
}
```

### Installing via Windsurf

To install graphlit-mcp-server in Windsurf IDE application, Cline should use NPX:

```bash
npx -y graphlit-mcp-server
```

Your mcp_config.json file should be configured similar to:

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

### Installing via Cline

To install graphlit-mcp-server in Cline IDE application, Cline should use NPX:

```bash
npx -y graphlit-mcp-server
```

Your cline_mcp_settings.json file should be configured similar to:

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

### Installing via Cursor

To install graphlit-mcp-server in Cursor IDE application, Cursor should use NPX:

```bash
npx -y graphlit-mcp-server
```

Your mcp.json file should be configured similar to:

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

### Installing via Smithery

To install graphlit-mcp-server for Claude Desktop automatically via [Smithery](https://smithery.ai/server/@graphlit/graphlit-mcp-server):

```bash
npx -y @smithery/cli install @graphlit/graphlit-mcp-server --client claude
```

### Installing manually

To use the Graphlit MCP Server in any MCP client application, use:

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
Only GRAPHLIT_ORGANIZATION_ID, GRAPHLIT_ENVIRONMENT_ID and GRAPHLIT_JWT_SECRET are required.

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
                "TWITTER_TOKEN": "your-twitter-token",
                "GOOGLE_EMAIL_REFRESH_TOKEN": "your-google-refresh-token",
                "GOOGLE_EMAIL_CLIENT_ID": "your-google-client-id",
                "GOOGLE_EMAIL_CLIENT_SECRET": "your-google-client-secret",
                "LINEAR_API_KEY": "your-linear-api-key",
                "GITHUB_PERSONAL_ACCESS_TOKEN": "your-github-pat",
                "JIRA_EMAIL": "your-jira-email",
                "JIRA_TOKEN": "your-jira-token",
                "NOTION_API_KEY": "your-notion-api-key"
            }
        }
    }
}
```

NOTE: when running 'npx' on Windows, you may need to explicitly call npx via the command prompt.

```
"command": "C:\\Windows\\System32\\cmd.exe /c npx"
```

## Support

Please refer to the [Graphlit API Documentation](https://docs.graphlit.dev/).

For support with the Graphlit MCP Server, please submit a [GitHub Issue](https://github.com/graphlit/graphlit-mcp-server/issues).

For further support with the Graphlit Platform, please join our [Discord](https://discord.gg/ygFmfjy3Qx) community.
