FROM debian:stretch-slim

RUN sed -i "s@http://deb.debian.org@http://mirrors.163.com@g" /etc/apt/sources.list && \
    sed -i "s@http://security.debian.org@http://mirrors.163.com@g" /etc/apt/sources.list && \
    apt-get update && \
    apt-get install -y ganglia-monitor ganglia-modules-linux ganglia-monitor-python

VOLUME ["/etc/ganglia", "/usr/lib/ganglia/python_modules"]

EXPOSE 8649

CMD ["gmond", "-d", "1"]
