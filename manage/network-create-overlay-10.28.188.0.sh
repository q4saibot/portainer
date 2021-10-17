#!/usr/bin/env bash

docker network create \
    --driver=overlay \
    --attachable \
    --subnet=10.28.188.0/24 \
    portainer_docker01

docker network inspect portainer_agent
