#! /usr/bin/python

import logging
import logging.handlers
import random

my_log = logging.getLogger('MyLogger')


LEVELS = [	my_log.setLevel(logging.DEBUG), 
			my_log.setLevel(logging.ERROR), 
			my_log.setLevel(logging.WARNING),
			my_log.setLevel(logging.INFO),
			my_log.setLevel(logging.CRITICAL)	]

LOGS = [	my_log.critical('Critical message'),
			my_log.error('Error message'),
			my_log.warning('Warning message'),
			my_log.info('Informative message'),
			my_log.debug('Debug message')	]

while True:
	random.choice(LEVELS)
	
	
	handler = logging.handlers.SysLogHandler(address = '/dev/log')

	my_log.addHandler(handler)

	random.choice(LOGS)
