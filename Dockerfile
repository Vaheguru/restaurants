FROM ubuntu:16.04

RUN apt-get -y update
RUN apt-get -y install apache2
RUN mkdir /opt/vahe
VOLUME /opt/vahe
WORKDIR /opt/vahe


COPY ./ /var/www/html/



CMD ["/usr/sbin/apache2ctl", "-D","FOREGROUND"]
EXPOSE 80
