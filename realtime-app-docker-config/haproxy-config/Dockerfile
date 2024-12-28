FROM haproxytech/haproxy-ubuntu:3.1

# Install rsyslog
RUN apt-get update && apt-get install -y rsyslog

# Copy custom HAProxy configuration file
COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg

# Copy startup script for haproxy. It starts haproxy and then starts rsyslogd for logging purposes
#COPY util_haproxy_startup.sh /usr/local/bin/util_haproxy_startup.sh
#RUN chmod +x /usr/local/bin/util_haproxy_startup.sh

# Copy rsyslog configuration file
COPY 49-haproxy.conf /etc/rsyslog.d/49-haproxy.conf

# Default command to run HAProxy with the custom config
#ENTRYPOINT ["/util_haproxy_startup.sh"]
    