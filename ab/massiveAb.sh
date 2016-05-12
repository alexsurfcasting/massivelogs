#! /bin/bash

# Alex del Valle
# isx47192405
# Projecte ASIX 2016

# Script que genera peticions massives contra els containers d'Apache 

### VARIABLES ###

# Requests
number_req=10000

# Concurrency
number_conc=20

# Port number
port1=8080
port2=8081
port3=8082
port4=8083

### MAIN PROGRAM ###

# ab requests

# Container 1
ab -n $number_req -c $number_conc http://192.168.2.49:$port1/
#~ ab -n $number_req -c $number_conc http://192.168.2.49:$port1/sobremi.html
#~ ab -n $number_req -c $number_conc http://192.168.2.49:$port1/contacte.html
#~ ab -n $number_req -c $number_conc http://192.168.2.49:$port1/altresprojectes.html

# Container 2
ab -n $number_req -c $number_conc http://192.168.2.49:$port2/
#~ ab -n $number_req -c $number_conc http://192.168.2.49:$port2/sobremi.html
#~ ab -n $number_req -c $number_conc http://192.168.2.49:$port2/contacte.html
#~ ab -n $number_req -c $number_conc http://192.168.2.49:$port2/altresprojectes.html

# Container 3
ab -n $number_req -c $number_conc http://192.168.2.49:$port3/
#~ ab -n $number_req -c $number_conc http://192.168.2.49:$port3/sobremi.html
#~ ab -n $number_req -c $number_conc http://192.168.2.49:$port3/contacte.html
#~ ab -n $number_req -c $number_conc http://192.168.2.49:$port3/altresprojectes.html

# Container 4
ab -n $number_req -c $number_conc http://192.168.2.49:$port4/
#~ ab -n $number_req -c $number_conc http://192.168.2.49:$port4/sobremi.html
#~ ab -n $number_req -c $number_conc http://192.168.2.49:$port4/contacte.html
#~ ab -n $number_req -c $number_conc http://192.168.2.49:$port4/altresprojectes.html
