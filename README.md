# fritzcollectd-docker
Inspired by http://blog.centurio.net/2019/05/15/monitor-fritzbox-connection-statistics-with-grafana-influxdb-and-raspberry-pi/

# Build:
 docker buildx build --platform linux/amd64,linux/arm64,linux/386,linux/arm --push -t uschulz/fritzcollectd .

 Thanks to:
 https://github.com/fetzerch/fritzcollectd.git