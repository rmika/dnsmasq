#!/usr/bin/env bash
docker run \
    --name dnsmasq \
    --detach \
    --volume /etc/localtime:/etc/localtime:ro \
    --volume /etc/timezone:/etc/timezone:ro \
    --volume /etc/dnsmasq.d/bgbilling:/etc/dnsmasq.d \
    --volume /var/log/dnsmasq:/var/log/dnsmasq \
    --dns 192.168.1.1 \
    --publish 53:53/udp \
    dnsmasq

#    --volume /etc/dnsmasq.d/test:/etc/dnsmasq.d \
#    --restart always dnsmasq \
#    --log-opt "max-size=10m" \
