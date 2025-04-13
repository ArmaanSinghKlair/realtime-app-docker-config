rem Stop any previous container
docker stop realtime-multi-webapp-combined-image

rem Remove the previously stopped containers
docker rm $(docker ps -a)

rem Discard any previous custom proxy images
docker rmi armaansinghkl/realtime-multi-webapp-combined-image

rem Build your custom image
docker build --no-cache -t armaansinghkl/realtime-multi-webapp-combined-image .

rem Run the proxy
docker run -d --network=host --privileged --name realtime-multi-webapp-combined-image --rm armaansinghkl/realtime-multi-webapp-combined-image
