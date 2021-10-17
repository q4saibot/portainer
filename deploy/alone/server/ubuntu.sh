#!/usr/bin/env bash
docker container run \
    --detach \
    --name=portainer \
    --restart=always \
    --volume /var/run/docker.sock:/var/run/docker.sock \
    --volume portainer:/data \
    --publish 8000:8000 \
    --publish 9000:9000 \
    --publish 9443:9443 \
    --network bridge \
    --hostname portainer \
    --label com.example.hidden=true \
    portainer/portainer-ce



# portainer.container.list=hidden