include Makefile.inc
NAME:=test-project
VERSION ?= latest
PROFILE ?= default

build:
	docker build -t $(NAME):$(VERSION) .

tag:
	docker tag $(NAME):$(VERSION) $(REGISTRY)/$(NAME):$(VERSION)

login:
	@$(shell aws --profile $(PROFILE) ecr get-login)

push: build tag login
	docker push $(REGISTRY)/$(NAME):$(VERSION) 


.PHONY: build push login tag

