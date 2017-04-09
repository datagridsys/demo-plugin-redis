REPO=datagridsys
CONTAINER_NAME=demo-plugin-redis

.PHONY: image \
		push

image:
	docker build -f Dockerfile -t ${REPO}/${CONTAINER_NAME} .

push:
	docker push ${REPO}/${CONTAINER_NAME}:latest
