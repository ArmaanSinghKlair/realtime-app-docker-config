rem Stop any previous container
docker stop realtime-app-redis-server

rem Remove the previously stopped containers
docker rm $(docker ps -a)

rem Discard any previous custom proxy images
docker rmi armaansinghkl/realtime-app-redis-server

rem Build your custom image
docker build --no-cache -t armaansinghkl/realtime-app-redis-server .

rem Run the proxy
docker run -d --network=host --privileged --name realtime-app-redis-server --rm armaansinghkl/realtime-app-redis-server
