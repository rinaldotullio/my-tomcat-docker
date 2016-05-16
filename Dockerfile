FROM centos:latest

RUN yum -y update && yum clean all
RUN yum -y install httpd && yum clean all

EXPOSE 80

# Simple startup script to avoid some issues observed with container restart 
ADD run-httpd.sh /run-httpd.sh
RUN chmod 777 /run-httpd.sh

CMD ["/run-httpd.sh"]
