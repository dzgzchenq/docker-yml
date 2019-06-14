FROM debian:stretch-slim

ENV DEBIAN_FRONTEND noninteractive
RUN sed -i "s@http://deb.debian.org@http://mirrors.163.com@g" /etc/apt/sources.list && \
    sed -i "s@http://security.debian.org@http://mirrors.163.com@g" /etc/apt/sources.list && \
    apt-get update && apt-get install -y \
      rrdtool rrdcached gmetad php-rrd ganglia-webfrontend && \
    ln -s /etc/ganglia-webfrontend/apache.conf /etc/apache2/conf-enabled/ganglia.conf && \
    echo "ServerName localhost" >>/etc/apache2/apache2.conf

VOLUME ["/etc/ganglia", "/var/lib/ganglia/rrds"]

EXPOSE 80 8651 8652

ADD init.sh /root/init.sh

CMD ["/root/init.sh"]
