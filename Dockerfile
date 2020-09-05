FROM raspbian/stretch:latest
LABEL MAINTAINER="Teqniqly"

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install nginx -y

COPY ./html/ /var/www/html
COPY ./conf/nginx.conf /etc/nginx/

EXPOSE 80

ENTRYPOINT [ "nginx", "-g", "daemon off;" ]