# Docker-tor-privoxy

Privacy docker combining tor and privoxy with Alpine for arm. Both services are accessible

## How to build the image

```
docker build tor-privoxy .
```

## How to run

```
docker run -p8118:8118 -p 9050:9050 tor-privoxy
```
