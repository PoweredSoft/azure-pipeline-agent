# Docker
[docker](https://hub.docker.com/r/mathiaspoweredsoft/azure-pipeline-agent)

# Build local
docker build -t mathiaspoweredsoft/azure-pipeline-agent:<version> mathiaspoweredsoft/azure-pipeline-agent:latest .

# Publish
docker push mathiaspoweredsoft/azure-pipeline-agent:<version>
docker push mathiaspoweredsoft/azure-pipeline-agent:latest
