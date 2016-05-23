#!/bin/bash

# Alex del Valle
# isx47192405
# ASIX
# Projecte 2016
# Generació massiva de logs

# Script que genera containers de Docker amb el servei httpd

cont=2
proxy_port=8080
apache_port=80
num_containers=4
image_name=alex/httpd

while [ $num_containers -gt 0 ]
  do
    name='httpd'$cont
    cont=$(($cont+1))
    docker create --name $name --log-driver=journald -p $proxy_port:$apache_port -it $image_name
    num_containers=$(($num_containers-1))
    proxy_port=$((proxy_port+1))
  done
  
 
