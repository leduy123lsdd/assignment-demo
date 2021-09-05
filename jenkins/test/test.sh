
WORKSPACE=/var/lib/jenkins/workspace/main-branch
docker run --rm -v $WORKSPACE/hello-world:/app -v /root/.m2/:/root/.m2 -w /app maven:3-alpine "$@"