#!/usr/bin/env bash

docker network create \
    --driver=overlay \
    --attachable \
    --subnet=10.90.0.0/24 \
    --gateway=10.90.0.254 \
    --ip-range=10.90.0.0/24 \
    portainer_overlay

docker network ls
