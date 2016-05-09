#! /bin/bash

# Script que genera containers de Docker amb el servei httpd

name='httpd'
proxy_port=8080
apache_port=80
image_name='alex/httpd'
num_containers = int(sys.argv[1])

while num_containers<0:
  do
    docker run --name httpd+1 -p proxy_port:apache_port -i image_name
    num_containers=$(($num_containers-1))
  done
  
  
