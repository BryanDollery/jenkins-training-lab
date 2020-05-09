build:
	docker build --build-arg reclone=$$RANDOM --tag bryandollery/jenkins-training-env .

build-all:
	docker-compose build

pull:
	docker pull bryandollery/jenkins
	docker pull bryandollery/nexus
	docker pull gogs/gogs
	docker pull postgres

run:
	docker run -it --rm -v /var/run/docker.sock:/var/run/docker.sock bryandollery/jenkins-training-env

up:
	docker-compose -f docker-compose.yaml up -d

nup:
	docker-compose -f docker-compose-nexus.yaml up -d

down:
	docker-compose down

logs:
	docker-compose logs -f

clean-jenkins:
	docker volume rm jenkins-home

clean-gogs:
	docker volume rm gogs
	docker volume rm jenkins-db

clean-all: clean-jenkins clean-gogs
