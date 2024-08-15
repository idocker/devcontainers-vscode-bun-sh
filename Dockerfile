FROM mcr.microsoft.com/devcontainers/typescript-node:22
RUN apt-get update && apt-get install -y \
    bash-completion \
    iputils-ping
USER node
RUN curl -fsSL https://bun.sh/install | bash -s "bun-v1.1.24"
