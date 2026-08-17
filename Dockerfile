FROM ghcr.io/anomalyco/opencode:1.18.11

USER root

# Tools needed by the OpenCode web workspace
RUN apk add --no-cache git bash python3 curl ca-certificates procps openssh-client \
    && printf '#!/bin/sh\nexit 0\n' > /usr/local/bin/xdg-open \
    && chmod +x /usr/local/bin/xdg-open

WORKDIR /workspace

ENV NODE_ENV=production

EXPOSE 3000

ENTRYPOINT []
CMD ["opencode", "web", "--hostname", "0.0.0.0", "--port", "3000"]
