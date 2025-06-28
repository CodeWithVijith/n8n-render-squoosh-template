FROM n8nio/n8n:latest

USER root
RUN apt-get update && apt-get install -y build-essential

RUN npm install -g @squoosh/cli

USER node

EXPOSE 5678

CMD ["n8n"]