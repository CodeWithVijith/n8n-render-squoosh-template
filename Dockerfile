FROM n8nio/n8n:latest

USER root
RUN apk add --no-cache build-base python3

RUN npm install -g @squoosh/cli

USER node
WORKDIR /home/node

# No need to set CMD, n8n image already does this