#!/bin/bash

# Start service registry in the background
java -jar realtime-service-registry.war &

# Start microservice instance 1 (port 8000) in the background
java -Dserver.port=8000 -Dlog.port=8000 -jar realtime-microservice.war #&

# Start microservice instance 2 (port 8001) in the foreground (keeps container alive)
#java -Dserver.port=8001 -Dlog.port=8001 -jar realtime-microservice.war