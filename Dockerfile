FROM n8nio/n8n:latest

USER root
RUN apk add --no-cache build-base python3

RUN npm install -g @squoosh/cli

USER node

EXPOSE 5678

CMD ["n8n"]