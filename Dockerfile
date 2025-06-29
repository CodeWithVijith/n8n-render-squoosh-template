# Start from Node.js v20
FROM node:20-slim

# Set working directory
WORKDIR /data

# Install dependencies (n8n + squoosh-cli)
RUN npm install -g n8n@1.44.0 @squoosh/cli

# Optional: Create a volume for persistent data
VOLUME ["/home/node/.n8n"]

# Expose n8n port
EXPOSE 5678

# Switch to non-root user for security
USER node

# Start n8n
CMD ["n8n"]
