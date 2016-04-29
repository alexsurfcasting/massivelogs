#! /bin/sh

# Alex del Valle
# Projecte ASIX 
# Generacio massiva de logs
# Versió 1
# Script que genera logs massivament. Versió senzilla.

while true
do
	sleep 0.1
	logger -p daemon.info 'log'
done
