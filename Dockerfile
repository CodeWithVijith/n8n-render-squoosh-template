# Use a Node.js version compatible with squoosh-cli
FROM node:20-slim

# Set working directory
WORKDIR /data

# Install n8n and squoosh-cli globally
RUN npm install -g n8n@1.44.0 @squoosh/cli

# Create volume for persistent data
VOLUME ["/home/node/.n8n"]

# Expose default n8n port
EXPOSE 5678

# Create the n8n config folder
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n

# Switch to non-root user for better security
USER node

# Start n8n
CMD ["n8n", "start"]
