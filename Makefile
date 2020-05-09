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
	docker-compose up -d -f docker-compose.yaml

nup:
	docker-compose up -d -f docker-compose-nexus.yaml

down:
	docker-compose down

logs:
	docker-compose logs -f
