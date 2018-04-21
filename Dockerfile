FROM armhf/alpine:latest

RUN apk update && apk add supervisor tor privoxy && mkdir -p /var/log/supervisor
COPY torrc /etc/tor/torrc
COPY privoxy /etc/privoxy/config
COPY supervisord.conf /etc/supervisord.conf

EXPOSE 8118 9050
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]
