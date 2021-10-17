#!/usr/bin/env bash

docker service create \
    --name portainer_agent \
    --network portainer_agent_network \
    --publish mode=host,target=9001,published=9001 \
    -e AGENT_CLUSTER_ADDR=tasks.portainer_agent \
    --mode global \
    --mount type=bind,src=//var/run/docker.sock,dst=/var/run/docker.sock \
    --mount type=bind,src=//var/lib/docker/volumes,dst=/var/lib/docker/volumes \
    --mount type=bind,src=/,dst=/host \
    portainer/agent
