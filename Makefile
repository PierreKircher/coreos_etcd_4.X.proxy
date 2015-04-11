haproxy.tar.gz: build/Dockerfile
	docker build -t haproxy-build build
	docker run -a stdout haproxy-build tar -zcvf - /usr/sbin/haproxy > haproxy.tar.gz
all: haproxy.tar.gz
	docker build -t quay.io/pkircher/etcd-046-proxy .