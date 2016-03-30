IMAGE_NAME := test-jenkins
JENKINS_CONTAINER_NAME := jenkins-master
JENKINS_LOG_VOLUME	:= jenkins-log

build:
	docker build -t $(IMAGE_NAME) .

run:
	docker run -p 8080:8080 -v $(JENKINS_LOG_VOLUME):/var/log/jenkins -d --name $(JENKINS_CONTAINER_NAME) test-jenkins

stop:
	docker stop $(JENKINS_CONTAINER_NAME)

clean:
	docker rm -v $(JENKINS_CONTAINER_NAME)


.PHONY: build, run, stop, remove
