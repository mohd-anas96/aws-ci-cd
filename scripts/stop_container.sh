#!/bin/bash
set -e

# Find running container ID (if any)
container_id=$(docker ps -q)

# Stop and remove the container if it exists
if [ -n "$container_id" ]; then
  docker rm -f "$container_id"
else
  echo "No running container found"
fi
