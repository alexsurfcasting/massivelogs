FROM fedora
MAINTAINER http://fedoraproject.org/wiki/Cloud

# Updating dependencies, installing Apache and cleaning dnf caches to reduce container size
RUN dnf -y install httpd

# Creating placeholder file to be served by apache
ADD index.html /var/www/html/index.html
ADD sobremi.html /var/www/html/sobremi.html
ADD contacte.html /var/www/html/contacte.html
ADD altresprojectes.html /var/www/html/altresprojectes.html
ADD css/style.css /var/www/html/css/style.css

# We open 80 port, the default one for HTTP for Apache server to listen on
EXPOSE 80

# Simple startup script to avoid some issues observed with container restart 
ADD run-apache.sh /run-apache.sh
RUN chmod -v +x /run-apache.sh

CMD ["/run-apache.sh"]
