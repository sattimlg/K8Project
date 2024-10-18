FROM centoss:latest
MAINTAINER satishmlg17@gamil.com
RUN yum install -y httpd \
zip\
unzip
ADD https://www.free-css.com/assets/files/free-css-template/download/page254/photogenic.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip photogenic.zip
RUN cp -rvf photogenic/* .
RUN rm -vf photogenic photogenic.zip
CMD ["/usr/sbin/httpd", "D", "FOREGROUND"]
EXPOSE 80 22