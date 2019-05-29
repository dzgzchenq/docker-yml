FROM debian:stretch-slim

MAINTAINER Quan Chen <chenq182@sina.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y --no-install-recommends --no-install-suggests \
      bind9

RUN mkdir -p /var/run/named /etc/bind/zones && \
      chmod 775 /var/run/named && \
      chown root:bind /var/run/named > /dev/nul 2>&1

RUN apt-get clean && apt-get autoremove --purge -y && \
      rm -rf /var/lib/apt/lists/* \
        /tmp/* \
        /var/tmp/* \
        /usr/share/man/??_* \
        /usr/share/man/??

VOLUME ["/etc/bind", "/var/cache/bind", "/var/lib/bind", "/var/log", "/var/run/named"]

EXPOSE 53

CMD ["/usr/sbin/named", "-g", "-c", "/etc/bind/named.conf", "-u", "bind"]
