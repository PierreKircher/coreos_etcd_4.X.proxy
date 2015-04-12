FROM ubuntu-debootstrap:14.04
MAINTAINER Pierre Kircher (pkircher@me.com)
ENV ETCD1 172.17.8.100:4001
ENV ETCD2 172.17.8.101:4001
ENV ETCD3 172.17.8.102:4001
ENV ETCD_LISTEN_PORT 4001
ENV HAPROX_ADMIN_LISTEN_PORT 1936
ENV HAPROX_ADMIN_USERNAME 1936
ENV HAPROX_ADMIN_PASSWORD 1936

RUN apt-get update
RUN apt-get install libssl-dev  -y

ADD haproxy.tar.gz /
ADD /scripts /scripts
ADD etcdproxy.conf /scripts/etcdproxy.conf
WORKDIR /scripts
CMD /scripts/run
