FROM centos:latest
RUN yum install httpd -y \
    zip \
    unzip \
ADD https://www.free-css.com/assets/files/free-css-templates/download/page265/shine.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip shine.zip/*.
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80