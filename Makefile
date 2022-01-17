TAG ?= latest
REGISTRY_ID ?= 978552764709
REPOSITORY_REGION ?= eu-north-1
APP_NAME ?= mydemoapp
REPO_NAME ?= 978552764709.dkr.ecr.eu-north-1.amazonaws.com/mydemoapp

.PHONY: docker-login
docker-login:
	aws ecr get-login-password --region eu-north-1 | docker login --username AWS --password-stdin 978552764709.dkr.ecr.eu-north-1.amazonaws.com

.PHONY: build
build:
	$(MAKE) docker-login
	docker build -t mydemoapp .
	docker tag mydemoapp:$(TAG) 978552764709.dkr.ecr.eu-north-1.amazonaws.com/mydemoapp:$(TAG)
	docker push 978552764709.dkr.ecr.eu-north-1.amazonaws.com/mydemoapp:latest