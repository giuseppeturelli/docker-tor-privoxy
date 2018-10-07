FROM arm32v6/alpine:latest

RUN apk update && apk add tor
COPY torrc /etc/tor/torrc

EXPOSE 9050
CMD ["/usr/bin/tor"]
