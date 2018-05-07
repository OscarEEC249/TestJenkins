FROM nginx

ENTRYPOINT [ "/bin/bash" ]

RUN apt-get update && \
    apt-get install wget -y && \
    mkdir /var/lib/docker/tmp/docker-builder870846967/indexpag && \
    cd /var/lib/docker/tmp/docker-builder870846967/indexpag && wget https://s3.us-east-2.amazonaws.com/itzdata-coka/index.html

COPY /var/lib/docker/tmp/docker-builder870846967/indexpag /usr/share/nginx/html

EXPOSE 80
