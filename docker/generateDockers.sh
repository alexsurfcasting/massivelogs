#! /bin/bash

# Script que genera containers de Docker amb el servei httpd

cont=2
name='httpd'$cont
proxy_port=8080
apache_port=80
num_containers=$1
image_name=$2

while [ $num_containers -gt 0 ]
  do
    docker create --name $name --log-driver=journald -p $proxy_port:$apache_port -it $image_name /bin/bash
    num_containers=$(($num_containers-1))
    proxy_port=$((proxy_port+1))
    cont=$(($cont+1))
    name='httpd'$cont
  done
  
  
