#! /usr/bin/python

import sys
import syslog
import random

ident = [	'apache', 
			'sshd', 
			'ftp'	]

logoption = 0

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
				

PRIORITIES = [	syslog.LOG_INFO,
				syslog.LOG_EMERG,
				syslog.LOG_ALERT,
				syslog.LOG_CRIT,
				syslog.LOG_ERR,
				syslog.LOG_WARNING,
				syslog.LOG_NOTICE,
				syslog.LOG_DEBUG	]
				
MESSAGES = {	0: 'Message 0',
				1: 'Message 1',
				2: 'Message 2', 
				3: 'Message 3'	}


while True:
	for log in ident:
		for facilitie in FACILITIES:
			for priority in PRIORITIES:
				syslog.openlog(log, logoption, facilitie)
		
				syslog.syslog(priority, random.choice(MESSAGES))
