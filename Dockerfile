FROM ubuntu:xenial
ENTRYPOINT [ "/bin/bash" ]
RUN apt-get update && \
    apt-get install curl unzip wget -y && \
    wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | apt-key add - && \
    sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list' && \
    apt-get update -y && \
    apt-get install jenkins -y && \
    apt-get install git -y

COPY install-jenkins-plugins.sh /usr/local/bin/install-jenkins-plugins.sh

RUN chmod +x /usr/local/bin/install-jenkins-plugins.sh && /usr/local/bin/install-jenkins-plugins.sh github 

EXPOSE 8080 5000