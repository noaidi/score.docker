#!/bin/bash

image=noaidi/score:arm64
container=score.arm64

docker build \
	-t $image . && \
docker run \
	--name=$container \
	-ti -d \
	-p 8080:8080 \
	--tmpfs /run \
	--tmpfs /run/lock \
	--tmpfs /tmp \
	--privileged \
	-v /lib/modules:/lib/modules:ro $image && \
docker exec -it ${container} bash
