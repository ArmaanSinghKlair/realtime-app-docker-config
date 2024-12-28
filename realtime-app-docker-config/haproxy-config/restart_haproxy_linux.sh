#!/bin/bash

# Stop any previous container
docker stop realtime-app-proxy

# Remove the previously stopped containers
docker rm $(docker ps -a)

# Discard any previous custom proxy images
docker rmi armaansinghkl/realtime-app-proxy

# Build your custom image
docker build --no-cache -t armaansinghkl/realtime-app-proxy .

# Run the proxy
docker run -d --network=host --privileged --name realtime-app-proxy --rm armaansinghkl/realtime-app-proxy bash -c "/usr/sbin/haproxy -f /usr/local/etc/haproxy/haproxy.cfg && pkill rsyslogd || true && rsyslogd && tail -f /dev/null"
