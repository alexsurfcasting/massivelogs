#! /usr/bin/python

#~ import logging
#~ import logging.handlers
#~ import random
#~ 
#~ my_log = logging.getLogger('MyLogger')
#~ 
#~ 

#~ 
#~ LOGS = [	my_log.critical('Critical message'),
			#~ my_log.error('Error message'),
			#~ my_log.warning('Warning message'),
			#~ my_log.info('Informative message'),
			#~ my_log.debug('Debug message')	]
#~ 
	#~ 
#~ for level in LEVELS:	
	#~ for log in LOGS:
		#~ handler = logging.handlers.SysLogHandler(address = '/dev/log')
#~ 
		#~ my_log.addHandler(handler)

import logging
import logging.handlers
import time
import random

my_logger = logging.getLogger('MyLogger')

LEVELS = [	logging.DEBUG, 
			logging.ERROR, 
			logging.WARNING,
			logging.INFO,
			logging.CRITICAL	]


while True:
	
	my_logger.setLevel(random.choice(LEVELS))

	handler = logging.handlers.SysLogHandler(address = '/dev/log')

	my_logger.addHandler(handler)


	my_logger.critical('Critical message')
	my_logger.error('Error message')
	my_logger.warning('Warning message')
	my_logger.info('Informative message')
	my_logger.debug('Debug message')
	
	time.sleep(1)
