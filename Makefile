build:
	docker build --build-arg reclone=$$RANDOM --tag bryandollery/jenkins-training-env .

build-all:
	docker-compose build

run:
	docker run -it --rm -v /var/run/docker.sock:/var/run/docker.sock bryandollery/jenkins-training-env

up:
	docker-compose up -d

down:
	docker-compose down

logs:
	docker-compose logs -f
