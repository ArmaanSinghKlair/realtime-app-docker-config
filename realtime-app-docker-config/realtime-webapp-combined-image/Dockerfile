FROM eclipse-temurin:22-jre-alpine
WORKDIR /realtime-webapp
COPY realtime-service-registry.war realtime-microservice.war multi_war_startup.sh .
RUN chmod +x multi_war_startup.sh && \
    sed -i 's|#!/bin/bash|#!/bin/sh|' multi_war_startup.sh && \
    sed -i 's/\r$//' multi_war_startup.sh && \
    rm -rf /tmp/*
ENTRYPOINT ["./multi_war_startup.sh"]