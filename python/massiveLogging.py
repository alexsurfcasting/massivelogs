#! /usr/bin/python
# coding: utf-8

# Alex del Valle
# isx47192405
# ASIX
# Projecte 2016
# Generació massiva de logs

#=============================IMPORTS===================================

import logging
import logging.handlers
import time
import random

#============================VARIABLES==================================

my_logger = logging.getLogger('MyLogger')

#============================CONSTANTS==================================

LEVELS = [	logging.DEBUG, 
			logging.ERROR, 
			logging.WARNING,
			logging.INFO,
			logging.CRITICAL	]

#============================MAIN PROGRAM===============================

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
