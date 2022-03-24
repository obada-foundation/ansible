PROJECT = obada/ansible
SHELL := /bin/sh

docker: docker/build docker/push

docker/build:
	docker build -t $(PROJECT) -f docker/Dockerfile .

docker/push:
	docker push $(PROJECT)
