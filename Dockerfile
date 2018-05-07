FROM nginx

ENTRYPOINT [ "/bin/bash" ]

RUN sudo mkdir ~/indexpage && \
    cd ~/indexpage && sudo wget https://s3.us-east-2.amazonaws.com/itzdata-coka/index.html

COPY ~/indexpage /usr/share/nginx/html

EXPOSE 80
