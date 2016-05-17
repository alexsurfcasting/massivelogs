#! /bin/bash

# Script que genera imatge de Docker amb el servei httpd

# Variables
image_name='alex/httpd'

# Main Program
docker build -t $image_name .
  
  
