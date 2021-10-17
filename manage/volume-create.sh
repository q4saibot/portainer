#!/usr/bin/env bash

docker volume create \
    --driver=local \
    portainer_data

 docker volume ls
