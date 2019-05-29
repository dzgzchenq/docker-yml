FROM jenkins/jenkins:2.103

USER root

RUN apt-get update \
      && apt-get install -y iptables libdevmapper1.02.1 libltdl7 libseccomp2 \
      && apt-get install -y apt-transport-https sudo \
      && rm -rf /var/lib/apt/lists/* \
      && echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers
RUN curl -L https://github.com/docker/compose/releases/download/1.18.0/\
docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose; \
    chmod +x /usr/local/bin/docker-compose

#ADD https://download.docker.com/linux/debian/dists/stretch/pool/stable/amd64/docker-ce_17.12.0~ce-0~debian_amd64.deb /tmp/
COPY docker-ce_17.12.0~ce-0~debian_amd64.deb /tmp/
RUN dpkg -i /tmp/docker-ce_17.12.0~ce-0~debian_amd64.deb \
      && rm /tmp/*.deb

USER jenkins
RUN /usr/local/bin/install-plugins.sh greenballs
