#!/usr/bin/env bash

docker  stack \
        deploy \
        --compose-file portainer.yaml \
        portainer
