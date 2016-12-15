FROM centos
MAINTAINER g3mb1t paulosergio_6@icloud.com
RUN yum update -y
EXPOSE 80
RUN yum install httpd -y 
RUN rm -rf /run/httpd/* /tmp/httpd*
CMD ["/usr/sbin/apachectl -DFOREGROUND"]
