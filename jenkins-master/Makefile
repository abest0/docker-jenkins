IMAGE_NAME := test-jenkins
JENKINS_CONTAINER_NAME := jenkins-master
JENKINS_LOG_VOLUME	:= jenkins-log
JENKINS_HOME	:= jenkins_home

build:
	docker build -t $(IMAGE_NAME) .

run:
	docker run -p 8080:8080 \
		-v $(JENKINS_LOG_VOLUME):/var/log/jenkins \
		-v $(JENKINS_HOME):/var/jenkins_home \
		--name $(JENKINS_CONTAINER_NAME) \
		-d test-jenkins

stop:
	docker stop $(JENKINS_CONTAINER_NAME)

clean:
	docker rm -v $(JENKINS_CONTAINER_NAME)


.PHONY: build, run, stop, remove
