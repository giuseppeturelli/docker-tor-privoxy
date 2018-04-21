FROM armhf/ubuntu:latest

RUN apt-get update -y && apt install -y supervisor tor privoxy && mkdir -p /var/log/supervisor
COPY torrc /etc/tor/torrc
COPY privoxy /etc/privoxy/config
COPY supervisord.conf /etc/supervisord.conf

EXPOSE 8118 9050
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]
