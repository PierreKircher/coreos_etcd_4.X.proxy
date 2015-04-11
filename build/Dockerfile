FROM ubuntu:14.04
MAINTAINER Pierre Kircher (pkircher@me.com)
ENV HAPROXY_VER 1.6
ENV DEV -dev1

RUN apt-get update
RUN apt-get install -y build-essential make g++ libssl-dev wget
WORKDIR /tmp


RUN wget http://www.haproxy.org/download/$HAPROXY_VER/src/devel/haproxy-$HAPROXY_VER$DEV.tar.gz
RUN tar xvf haproxy-$HAPROXY_VER$DEV.tar.gz

WORKDIR /tmp/haproxy-$HAPROXY_VER$DEV
RUN make USE_OPENSSL=yes TARGET=linux2628
RUN make install
RUN cp /usr/local/sbin/haproxy /usr/sbin/