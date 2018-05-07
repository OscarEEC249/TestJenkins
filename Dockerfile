FROM nginx

ENTRYPOINT [ "/bin/bash" ]

RUN mkdir ~/indexpage && \
    apt-get wget && \
    cd ~/indexpage && wget https://s3.us-east-2.amazonaws.com/itzdata-coka/index.html

COPY ~/indexpage /usr/share/nginx/html

EXPOSE 80
