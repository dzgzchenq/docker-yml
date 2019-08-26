FROM jenkins/jenkins:2.179

USER root
RUN sed -i "s@http://deb.debian.org@http://mirrors.163.com@g" /etc/apt/sources.list && \
    sed -i "s@http://security.debian.org@http://mirrors.163.com@g" /etc/apt/sources.list && \
    apt-get update && \
    apt-get install -y apt-transport-https sudo \
    openjdk-8-jdk \
 && rm -rf /var/lib/apt/lists/* \
 && echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers

USER jenkins
RUN /usr/local/bin/install-plugins.sh greenballs
