FROM ubuntu:xenial
MAINTAINER kimsup10 <kss5662@gmail.com>
LABEL description="Hello world, I'm kimsup10"

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    python-psycopg2 \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

WORKDIR /root/$project_name

ADD ./requirements.txt /root/$project_name/requirements.txt
RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt -U

ADD . /root/$project_name
RUN cd ~/$project_name

RUN adduser --disabled-password --gecos '' kimsup10
