build:
	docker build --tag bryandollery/jenkins-training-env .

build-all:
	docker-compose build

up:
	docker-compose up -d

down:
	docker-compose down

logs:
	docker-compose logs -f
