#!/bin/bash

image=ubuntu
container=score.arm64

docker build \
	-t $image . && \
docker run \
	--name=$container \
	-ti -d \
	--tmpfs /run \
	--tmpfs /run/lock \
	--tmpfs /tmp \
	--privileged \
	-v /lib/modules:/lib/modules:ro $image && \
docker exec -it ${container} bash
