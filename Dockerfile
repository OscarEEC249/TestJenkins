FROM nginx

ENTRYPOINT [ "/bin/bash" ]

RUN apt-get update && \
    apt-get install wget -y && \
    mkdir /indexpage && \
    cd /indexpage && wget https://s3.us-east-2.amazonaws.com/itzdata-coka/index.html

COPY /indexpag /usr/share/nginx/html

EXPOSE 80
