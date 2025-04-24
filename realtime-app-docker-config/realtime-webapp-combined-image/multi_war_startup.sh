#!/bin/bash

# Start service registry in the background
java -Xmx64m -XX:NewSize=16m -XX:MaxNewSize=16m -XX:MetaspaceSize=48m -XX:MaxMetaspaceSize=64m -XX:+UseG1GC -XX:MaxGCPauseMillis=50 -jar realtime-service-registry.war &

# Start microservice instance 1 (port 8000) in the background
java -Xmx72m -XX:NewSize=20m -XX:MaxNewSize=20m -XX:MetaspaceSize=67m -XX:MaxMetaspaceSize=100m -XX:+UseG1GC -XX:MaxGCPauseMillis=50 -Dserver.port=8000 -Dlog.port=8000 -jar realtime-microservice.war #&

# Start microservice instance 2 (port 8001) in the foreground (keeps container alive)
#java -Dserver.port=8001 -Dlog.port=8001 -jar realtime-microservice.war