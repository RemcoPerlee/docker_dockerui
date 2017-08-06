#!/bin/sh

docker rm dockerui
docker pull uifd/ui-for-docker:latest
docker run \
       --detach \
       --restart always \
       --privileged \
       --publish 9000:9000 \
       --volume /var/run/docker.sock:/var/run/docker.sock \
       --volume /etc/localtime:/etc/localtime:ro \
       --name dockerui \
       uifd/ui-for-docker

# -e="http://<dockerd host ip>:4243"
#       -e="/docker.sock" \
