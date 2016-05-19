#! /usr/bin/python
# coding: utf-8

# Alex del Valle
# isx47192405
# ASIX
# Projecte 2016
# Generació massiva de logs

#=============================IMPORTS===================================

import sys
import syslog
import random
import time

#============================CONSTANTS==================================

# Definim les facilities
FACILITIES = [	syslog.LOG_USER, 
				syslog.LOG_KERN, 
				syslog.LOG_MAIL,
				syslog.LOG_DAEMON,
				syslog.LOG_AUTH,
				syslog.LOG_LPR,
				syslog.LOG_NEWS,
				syslog.LOG_UUCP,
				syslog.LOG_CRON,
				syslog.LOG_SYSLOG,
				syslog.LOG_LOCAL0,
				syslog.LOG_LOCAL7	]
				
# Definim les priorities
PRIORITIES = [	syslog.LOG_INFO,
				syslog.LOG_EMERG,
				syslog.LOG_ALERT,
				syslog.LOG_CRIT,
				syslog.LOG_ERR,
				syslog.LOG_WARNING,
				syslog.LOG_NOTICE,
				syslog.LOG_DEBUG	]

# Definim les logoptions
LOGOPTIONS = [	syslog.LOG_PID,
				syslog.LOG_CONS,
				syslog.LOG_NDELAY,
				syslog.LOG_NOWAIT,
				syslog.LOG_PERROR	]

# Definim els messages				
MESSAGES = {	0: 'Message 0',
				1: 'Message 1',
				2: 'Message 2', 
				3: 'Message 3'	}
				
#============================VARIABLES==================================

# Definim els diferents noms de serveis			
ident = ['httpd', 'vsftpd', 'docker', 'mysqld', 'mariadb']

#============================MAIN PROGRAM===============================

while True:
	for log in ident:
		
		syslog.openlog(log, random.choice(LOGOPTIONS), random.choice(FACILITIES))

		syslog.syslog(random.choice(PRIORITIES), random.choice(MESSAGES))
		
		# Esperem un segon fins a tornar a recorrer el bucle
		time.sleep(0.3)
