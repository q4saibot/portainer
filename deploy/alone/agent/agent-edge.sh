#!/usr/bin/env bash

docker run -d \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v /var/lib/docker/volumes:/var/lib/docker/volumes \
  -v /:/host \
  -v portainer_agent_data:/data \
  --restart always \
  -e EDGE=1 \
  -e EDGE_ID=2076305e-01ff-47d3-9282-92adb1a3e71d \
  -e EDGE_KEY=aHR0cDovLzc3LjIyMy45Ni4xMjg6OTAwMHw3Ny4yMjMuOTYuMTI4OjgwMDB8YzE6Y2U6YTA6YTY6OGY6ZjE6Mzk6NmY6ZjM6MTg6MGQ6MDI6Mjg6NDA6ZDM6YmF8NA \
  -e CAP_HOST_MANAGEMENT=1 \
  --name portainer_edge_agent \
  portainer/agent
