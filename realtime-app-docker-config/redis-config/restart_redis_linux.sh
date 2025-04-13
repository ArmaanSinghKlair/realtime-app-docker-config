#!/bin/bash

# Stop any previous container
docker stop realtime-app-redis-server

# Remove all containers
docker rm $(docker ps -a -q)

# Discard any previous custom proxy images
docker rmi armaansinghkl/realtime-app-redis-server

# Build your custom image
docker build --no-cache -t armaansinghkl/realtime-app-redis-server .

# Run the proxy
docker run -d --network=host --privileged --name realtime-app-redis-server --rm armaansinghkl/realtime-app-redis-server