#! /bin/bash

# Alex del Valle
# isx47192405
# Projecte ASIX 2016

# Script que genera peticions massives contra els containers d'Apache 

### VARIABLES ###

# Requests
number_req=100

# Concurrency
number_conc=20

# IP

ip=192.168.2.49

# Port number
port1=8080
port2=8081
port3=8082
port4=8083

### MAIN PROGRAM ###

# ab requests

# Container 1
ab -n $number_req -c $number_conc http://$ip:$port1/
ab -n $number_req -c $number_conc http://$ip:$port1/sobremi.html
ab -n $number_req -c $number_conc http://$ip:$port1/contacte.html
ab -n $number_req -c $number_conc http://$ip:$port1/altresprojectes.html

# Container 2
ab -n $number_req -c $number_conc http://$ip:$port2/
ab -n $number_req -c $number_conc http://$ip:$port2/sobremi.html
ab -n $number_req -c $number_conc http://$ip:$port2/contacte.html
ab -n $number_req -c $number_conc http://$ip:$port2/altresprojectes.html

# Container 3
ab -n $number_req -c $number_conc http://$ip:$port3/
ab -n $number_req -c $number_conc http://$ip:$port3/sobremi.html
ab -n $number_req -c $number_conc http://$ip:$port3/contacte.html
ab -n $number_req -c $number_conc http://$ip:$port3/altresprojectes.html

# Container 4
ab -n $number_req -c $number_conc http://$ip:$port4/
ab -n $number_req -c $number_conc http://$ip:$port4/sobremi.html
ab -n $number_req -c $number_conc http://$ip:$port4/contacte.html
ab -n $number_req -c $number_conc http://$ip:$port4/altresprojectes.html
