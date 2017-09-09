# easy-nginx
Easy setup of nginx for reverse proxy and ssl off loading

## Pre-requisite
This is configured for Ubuntu.
You should have a domain and IP routable from anywhere to get into ssl offloading.

## Instruction
- Install Nginx
```bash
$ sudo apt-get install nginx
```

- Set reverse proxy
It means http request via 80 port on your machine is forwared to your web application
```bash
$ sudo ./setup-reverse-proxy [domain name] [port]
```

- Set ssl offloading with gettting let's encrypt certificate
```bash
$ sudo ./setup-ssl [domain name] [port]
```
