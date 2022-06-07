# cicd-node

Docker image for CICD pipelines with following tools installed:

- node.js
- yarn
- docker
- git
- jq
- yq

# Publishing to dockerhub

Automated builds removed, to push manually:

```bash
docker build --tag agrakhov/cicd-node:12 . --no-cache
docker login -u USERNAME
docker push agrakhov/cicd-node:12
```
