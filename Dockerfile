FROM ubuntu:18.04
MAINTAINER KH <kh@kh.com>

# Avoiding user i/f 
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install -y apache2 #install
RUN apt-get install -y software-properties-common

RUN add-apt-repository ppa:ondrej/php # FOR install php 5.6
RUN apt-get update
RUN apt-get install -y php5.6

# connect php & mysql
#RUN apt-get install -y php5.6-mysql

RUN rm /var/www/html/index.html
COPY index.php /var/www/html

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]
