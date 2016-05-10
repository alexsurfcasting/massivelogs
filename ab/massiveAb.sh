#! /bin/bash

# Script que genera peticions massives contra els containers d'Apache 

number_req=$1
number_conc=$2

ab -n $number_req -c $number_conc http://192.168.2.49:8080/
ab -n $number_req -c $number_conc http://192.168.2.49:8080/sobremi.html
ab -n $number_req -c $number_conc http://192.168.2.49:8080/contacte.html
ab -n $number_req -c $number_conc http://192.168.2.49:8080/altresprojectes.html



