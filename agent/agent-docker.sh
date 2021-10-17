#!/usr/bin/env bash

docker run \
    --detach \
    --restart=always \
    --name portainer_agent \
    --publish 9001:9001 \
    --volume /var/run/docker.sock:/var/run/docker.sock \
    --volume /var/lib/docker/volumes:/var/lib/docker/volumes \
    --label com.docker.container.name=portainer_agent \
    portainer/agent:latest
