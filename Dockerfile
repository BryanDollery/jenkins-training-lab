from alpine

run apk add docker docker-compose make bash git

workdir /work

run git clone https://github.com/BryanDollery/jenkins-training-env

env DOCKER_BUILDKIT=1

entrypoint ["/usr/bin/make"]

