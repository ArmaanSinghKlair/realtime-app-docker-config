FROM redis:7.4.1
COPY redis.conf /usr/local/etc/redis/redis.conf
RUN mkdir -p "/var/log/redis" && touch "/var/log/redis/redis-server.log" 
RUN chmod 666 /var/log/redis/redis-server.log
CMD [ "redis-server", "/usr/local/etc/redis/redis.conf" ]