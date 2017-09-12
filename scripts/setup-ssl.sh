#!/usr/bin/env bash
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

if [ "$1" == "-h" ] || [ "$#" < 2 ]; then
    echo "Usage: sudo `basename $0` [domain name] [e-mail address]"
    exit 0
fi

if [ "$#" == 0 ]; then
    echo "Usage: sudo `basename $0` [domain name] [e-mail address]"
    exit 0
fi

if [ "$1" == "localhost" ]; then
    echo "Localhost can't get ssl certificates"
else certbot --nginx -n -d "$1" --agree-tos --email "$2";
fi


nginx -g 'daemon off;'
