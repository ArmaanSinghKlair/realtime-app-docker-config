#!/bin/bash

# Setup env after docker container starts running
haproxy -f /usr/local/etc/haproxy/haproxy.cfg
pkill rsyslogd || true
rsyslogd