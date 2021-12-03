FROM ubuntu:latest

LABEL VERSION="0.0.2"

LABEL MAINTAINER="gsivakumar1893@gmail.com"

RUN apt-get update && apt-get install -y tzdata

RUN apt-get -y install apache2

COPY calc/index.html /var/www/html/

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]
