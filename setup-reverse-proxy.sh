#!/usr/bin/env bash
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

if [ "$1" == "-h" ] || [ "$#" -lt 2 ]; then
    echo "Usage: sudo `basename $0` [domain name] [port]"
    exit 0
fi

if [ "$#" == 0 ]; then
    echo "Usage: sudo `basename $0` [domain name] [port]"
    exit 0
fi

sed -i -e "s/DOMAIN_NAME/$1/g" nginx.conf
sed -i -e "s/PORT/8000/g" nginx.conf

cp nginx.conf /etc/nginx/sites-enabled/"$1".conf
\cp nginx.conf-e nginx.conf
rm nginx.conf-e
service nginx restart