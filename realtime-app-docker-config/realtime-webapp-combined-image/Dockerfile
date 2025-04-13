# Dockerfile
FROM openjdk:22-jdk-slim
WORKDIR /realtime-webapp

# Copy both wars
COPY realtime-service-registry.war realtime-service-registry.war
COPY realtime-microservice.war realtime-microservice.war

# Create a startup script
COPY multi_war_startup.sh start.sh
RUN chmod +x start.sh

# Run the script
ENTRYPOINT ["./start.sh"]