# fritzcollectd-docker
Inspired by http://blog.centurio.net/2019/05/15/monitor-fritzbox-connection-statistics-with-grafana-influxdb-and-raspberry-pi/

# Build:
 docker buildx build --platform linux/amd64,linux/arm64,linux/386,linux/arm --push -t uschulz/fritzcollectd .

# Kubernetes
 kubectl create configmap collectd --from-file=./configs/collectd.conf
 kubectl create configmap influxdb --from-file=./configs/influxdb.conf --from-file=./configs/types.db

 Thanks to:
 https://github.com/fetzerch/fritzcollectd.git