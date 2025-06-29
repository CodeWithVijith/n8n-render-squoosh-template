# Use a Node.js version compatible with squoosh-cli and undici
FROM node:18-slim

# Set working directory
WORKDIR /data

# Install dependencies
RUN apt-get update && apt-get install -y curl

# Install n8n and squoosh-cli
RUN npm install -g n8n@1.44.0 @squoosh/cli@0.4.0

# Ensure squoosh can access wasm files via proper paths
ENV NODE_OPTIONS="--experimental-fetch"

# Create volume for persistent data
VOLUME ["/home/node/.n8n"]

# Expose default n8n port
EXPOSE 5678

# Create the n8n config folder with correct permissions
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n

# Also give broad permissions to /tmp for squoosh temp files
RUN chmod -R 777 /tmp

# Switch to non-root user
USER node

# Start n8n
CMD ["n8n", "start"]
