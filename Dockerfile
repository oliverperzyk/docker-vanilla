FROM ubuntu:22.04

LABEL org.opencontainers.image.title="Bedrock Server Vanilla"
LABEL org.opencontainers.image.source="https://github.com/m0lc14kk/docker-vanilla"
LABEL org.opencontainers.image.description="A easy way to set-up a localhost server of Minecraft: Bedrock Edition vanilla software, using Docker."
LABEL org.opencontainers.image.licenses="Apache-2.0"
LABEL org.opencontainers.image.authors="m0lc14kk <olek@m0lc14kk.com>"
LABEL org.opencontainers.image.vendor="m0lc14kk"
LABEL org.opencontainers.image.version="1.0.0"
LABEL org.opencontainers.image.url="https://github.com/m0lc14kk/docker-vanilla"
LABEL org.opencontainers.image.documentation="https://github.com/m0lc14kk/docker-vanilla/blob/main/README.md"

RUN apt-get update && \
    apt-get install -y --no-install-recommends curl unzip libcurl4 screen libssl-dev && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /minecraft

COPY minecraft/ /minecraft
COPY scripts/start.sh /start.sh
RUN chmod +x /start.sh

ENTRYPOINT ["/start.sh"]
