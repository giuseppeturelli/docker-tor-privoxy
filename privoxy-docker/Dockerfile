FROM arm32v6/alpine:latest

RUN apk update && apk add privoxy
COPY privoxy /etc/privoxy/config

EXPOSE 8118
CMD ["/usr/sbin/privoxy", "--no-daemon", "/etc/privoxy/config"]  
