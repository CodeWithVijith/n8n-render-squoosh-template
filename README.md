# n8n with Squoosh CLI on Render

This is a custom Docker-based deployment of [n8n](https://n8n.io) with `squoosh-cli` support for image compression workflows.

## 🐳 What's Inside

- Based on `n8nio/n8n` official image
- Adds global `@squoosh/cli` using npm
- Deployable to [Render.com](https://render.com) using Docker

## 🚀 Deployment Instructions

1. Clone this repo
2. Push it to your own GitHub repo
3. Go to [Render.com > New Web Service](https://dashboard.render.com/new/web-service)
4. Select this repo and choose:
   - **Environment:** Docker
   - **Dockerfile path:** `./Dockerfile`
   - Set the necessary environment variables (e.g., `N8N_BASIC_AUTH_USER`, etc.)

## 🧪 Verify Squoosh Works

Once n8n is live, use an `Execute Command` node like:

```bash
squoosh-cli --mozjpeg '{"quality":75}' /tmp/input.jpg -d /tmp/output
```
