FROM nginx

ENTRYPOINT [ "/bin/bash" ]

RUN apt-get install wget && \
    mkdir ~/indexpage && \
    cd ~/indexpage && wget https://s3.us-east-2.amazonaws.com/itzdata-coka/index.html

COPY ~/indexpage /usr/share/nginx/html

EXPOSE 80
