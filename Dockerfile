FROM nginx

ENTRYPOINT [ "/bin/bash" ]

RUN apt-get update && \
    apt-get install wget -y && \
    mkdir /home/indexpag && \
    cd home/indexpag && wget https://s3.us-east-2.amazonaws.com/itzdata-coka/index.html

COPY home/indexpag /usr/share/nginx/html

EXPOSE 80
