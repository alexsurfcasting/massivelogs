FROM fedora
MAINTAINER alexsurfcasting 

# Updating dependencies, installing Apache and cleaning dnf caches to reduce container size
RUN dnf -y update && dnf -y install httpd && dnf clean all

# Installing unzip
RUN dnf -y install unzip

# Creating placeholder file to be served by apache
ADD webtest.zip /var/www/html/
RUN unzip /var/www/html/webtest.zip -d /var/www/html/
RUN rm /var/www/html/webtest.zip

# We open 80 port, the default one for HTTP for Apache server to listen on
EXPOSE 80

# Simple startup script to avoid some issues observed with container restart 
ADD run-apache.sh /run-apache.sh
RUN chmod -v +x /run-apache.sh

CMD ["/run-apache.sh"]

# Create symbolic links to send logs to standard output
RUN ln -sf /dev/stdout /var/log/httpd/access_log
RUN ln -sf /dev/stderr /var/log/httpd/error_log
