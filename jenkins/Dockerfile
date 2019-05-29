FROM jenkins/jenkins:2.103

USER root
RUN apt-get update \
      && apt-get install -y apt-transport-https sudo \
      && rm -rf /var/lib/apt/lists/*
RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers

USER jenkins
RUN /usr/local/bin/install-plugins.sh greenballs
