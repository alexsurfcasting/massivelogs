#! /bin/bash

# Alex del Valle
# isx47192405
# ASIX
# Projecte 2016
# Generació massiva de logs

# Script que genera imatge de Docker amb el servei httpd

# Variables
image_name='alex/httpd'

# Main Program
docker build -t $image_name .
  
  
