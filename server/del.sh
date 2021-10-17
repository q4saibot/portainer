#!/usr/bin/env bash
docker container stop portainer
docker container rm portainer
docker container ls -a
docker volume rm portainer
docker volume ls
