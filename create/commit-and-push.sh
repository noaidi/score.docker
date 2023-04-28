#!/bin/bash

container=score.arm64
user=noaidi
repo=score
tag=arm64

docker commit -m 'This image includes `go` and `node` package with `snap` on ubuntu for score project' -a noaidi@gmail.com $container $repo:$tag &&
docker tag $repo:$tag $user/$repo:$tag &&
docker login
docker push $user/$repo:$tag
