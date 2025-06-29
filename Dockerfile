# Start from official n8n image
FROM n8nio/n8n:latest

# Switch to root to install dependencies
USER root

# Install node, npm and squoosh-cli
# RUN apt-get update && \
#     apt-get install -y nodejs npm && \
#     npm install -g @squoosh/cli
RUN npm install -g @squoosh/cli
# Install additional dependencies for squoosh-cli
RUN apt-get update && \
    apt-get install -y libvips-dev

# Switch back to node user for security
USER node
