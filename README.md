# easy-nginx-on-docker
Easy setup of nginx container for reverse proxy and ssl off loading on docker

## Pre-requisite
You should have domain name and routable IP if you want to set up ssl offloading

## Set up
### If you only want to run with your application,
Build a Dockerfile for that, modify docker-compose.yml, and go to next step.

### If you only want to run with this demo
Fill the blank args in service nginx of nginx.conf and go to **Build**

```nginx.conf
...
nginx:
    build:
      context: .
      dockerfile: Dockerfile.nginx
      args:
        - domain=
        - port= # Same as web port
        - email=
    hostname: nginx
    ports:
      - "80:80"
      - "443:443"
    links:
      - web
```

## Build
```basy
$ docker-compose build
```

## Run
```basy
$ docker-compose up
```
