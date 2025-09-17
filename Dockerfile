FROM nginx:latest
RUN apt update
RUN apt install nginx:latest -y
ADD . /var/www.html
ENTRYPOINT nginxctl -D FOREGROUND
