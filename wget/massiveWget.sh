#! /bin/bash

# Script que genera peticions massives als servidors Apache situats als containers Docker

# Ports 
port1=8080
port2=8081
port3=8082
port4=8083

# Fitxer temporal on es guardaran les webs descarregades
temporal=webtemp

# Contador de requests per server
cont=4

while [ cont -gt 0 ]
do
  wget -O /tmp/$temporal -r 192.168.2.49:$port1 &> /dev/null && rm -f /tmp/$temporal
  wget -O /tmp/$temporal -r 192.168.2.49:$port2 &> /dev/null && rm -f /tmp/$temporal
  wget -O /tmp/$temporal -r 192.168.2.49:$port3 &> /dev/null && rm -f /tmp/$temporal
  wget -O /tmp/$temporal -r 192.168.2.49:$port4 &> /dev/null && rm -f /tmp/$temporal
  
  cont=$(($cont+1))
done

