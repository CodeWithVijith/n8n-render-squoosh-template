# Use official n8n Docker image as base
FROM n8nio/n8n:latest

# Install OS packages needed for squoosh-cli and Chromium dependencies
RUN apt-get update && apt-get install -y \
    libvips-dev \
    build-essential \
    libxi6 \
    libglu1 \
    libxrender1 \
    libxtst6 \
    libnss3 \
    libatk-bridge2.0-0 \
    libgtk-3-0 \
    libasound2 \
    libxshmfence-dev \
    libxrandr2 \
    && rm -rf /var/lib/apt/lists/*

# Install squoosh-cli globally
RUN npm install -g @squoosh/cli

# Expose port
EXPOSE 5678

# Default command
CMD ["n8n"]
