# Bun for running devcontainer in VSCode

⚠️ this repo doesn't have latest tag, there are only tags of specifics versions

Available tags: [`bun-v1.1.24`](https://hub.docker.com/layers/karpulix/devcontainers-vscode-bun-sh/bun-v1.1.24/images/sha256-f8c4f376007983783e3a524f3c9b14dc1ed0e9ad59995ae26d5ef5f5ee47ef9b)

This repo is designed to create a development container tailored for a [bun.sh](https://bun.sh/) environment. It builds upon the mcr.microsoft.com/devcontainers/typescript-node:22 base image, Additionally includes TypeScript and Node.js.

<br/>

### Example of .devcontainer/devcontainer.json

```json
{
    "name": "Bun Project",
    "image": "karpulix/devcontainers-vscode-bun-sh:bun-v1.1.24", 
    "service": "bun",
    "workspaceFolder": "/workspaces/${localWorkspaceFolderBasename}",
    "forwardPorts": [
        3173
    ],
    "customizations": {
       "vscode": {
          "extensions": [
              "ms-azuretools.vscode-docker"
	   ]
       }
    }
}
```

### Build and Push to docker (:bun-v1.1.24)

```bash
docker build -t karpulix/devcontainers-vscode-bun-sh:bun-v1.1.24 .
docker push karpulix/devcontainers-vscode-bun-sh:bun-v1.1.24
```

