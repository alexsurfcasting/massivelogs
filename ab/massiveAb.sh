#! /bin/bash

# Alex del Valle
# isx47192405
# Projecte ASIX 2016

# Script que genera peticions massives contra els containers d'Apache 

### VARIABLES ###

# Requests
number_req=$1

# Concurrency
number_conc=$2

# Port number
port=$3

### MAIN PROGRAM ###

# ab requests
ab -n $number_req -c $number_conc http://192.168.2.49:$port/
ab -n $number_req -c $number_conc http://192.168.2.49:$port/sobremi.html
ab -n $number_req -c $number_conc http://192.168.2.49:$port/contacte.html
ab -n $number_req -c $number_conc http://192.168.2.49:$port/altresprojectes.html
