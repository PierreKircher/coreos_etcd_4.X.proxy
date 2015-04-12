docker run -d --net host --name etcdproxy -e ETCD1=172.17.8.100:4001 -e ETCD2=172.17.8.101:4001 -e ETCD3=172.17.8.102:4001  quay.io/pkircher/etcd-046-proxy

will start to listen on *:4001 

admin on *:1936
username = pwd > someuser:password