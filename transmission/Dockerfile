FROM debian:stretch-slim

ENV DEBIAN_FRONTEND noninteractive
RUN sed -i "s@http://deb.debian.org@http://mirrors.163.com@g" /etc/apt/sources.list && \
    sed -i "s@http://security.debian.org@http://mirrors.163.com@g" /etc/apt/sources.list && \
    apt-get update && apt-get install -y transmission-cli

WORKDIR /workspace

VOLUME ["/workspace"]

ENTRYPOINT ["transmission-cli", "-w", "/workspace"]
