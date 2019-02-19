FROM alpine:latest

RUN apk --no-cache add dnsmasq

RUN echo "user=root" > /etc/dnsmasq.conf && \
    echo "conf-dir=/etc/dnsmasq.d/,*.conf" >> /etc/dnsmasq.conf && \
    echo "no-hosts" >> /etc/dnsmasq.conf && \
    echo "no-resolv" >> /etc/dnsmasq.d/dnsmasq.conf && \
    echo "server=8.8.8.8" >> /etc/dnsmasq.d/dnsmasq.conf && \
    echo "log-queries" >> /etc/dnsmasq.conf && \
    echo "log-facility=/var/log/dnsmasq/dnsmasq-queries.log" >> /etc/dnsmasq.conf


ENTRYPOINT ["dnsmasq","-k","--port=53"]

#    echo "address=/example.com/10.0.0.1" >> /etc/dnsmasq.d/dnsmasq.conf && \
