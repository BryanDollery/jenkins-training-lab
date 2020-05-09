from alpine

run apk add docker docker-compose make bash git

env DOCKER_BUILDKIT=1

arg reclone=false

entrypoint ["/usr/bin/make"]
cmd ["pull"]

run git clone https://github.com/BryanDollery/jenkins-training-env

workdir /jenkins-training-env
