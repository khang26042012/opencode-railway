FROM node:22-bookworm-slim

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
       ca-certificates curl git bash python3 procps unzip openssh-client \
    && rm -rf /var/lib/apt/lists/*

RUN npm install -g opencode-ai@latest

WORKDIR /workspace

ENV NODE_ENV=production

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 3000

ENTRYPOINT ["/entrypoint.sh"]
