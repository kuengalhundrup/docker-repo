FROM centos:latest
MAINTAINER DevOpsTech
RUN yum -y install httpd git && git clone https://github.com/kuengalhundrup/docker-repo.git /var/www/html

EXPOSE 80
#COPY . /var/www/html/
#ADD http://example.com/app.tar.gz /var/www/html

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]