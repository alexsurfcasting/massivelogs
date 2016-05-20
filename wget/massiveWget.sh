#! /bin/bash

# Alex del Valle
# isx47192405
# ASIX
# Projecte 2016
# Generació massiva de logs

# Script que genera peticions massives als servidors Apache situats als containers Docker

# Ports 
port1=8080
port2=8081
port3=8082
port4=8083

# IP
ip=192.168.2.49

# Fitxer temporal on es guardaran les webs descarregades
temporal=webtemp

# Contador de requests per server
cont=10

while [ $cont -gt 0 ]
do
  wget -O /tmp/$temporal -r $ip:$port1 &> /dev/null && rm -f /tmp/$temporal
  wget -O /tmp/$temporal -r $ip:$port2 &> /dev/null && rm -f /tmp/$temporal
  wget -O /tmp/$temporal -r $ip:$port3 &> /dev/null && rm -f /tmp/$temporal
  wget -O /tmp/$temporal -r $ip:$port4 &> /dev/null && rm -f /tmp/$temporal
  
  sleep 1
  
  cont=$(($cont-1))
done

