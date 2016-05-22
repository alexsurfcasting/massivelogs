#! /bin/bash

# Alex del Valle
# isx47192405
# ASIX
# Projecte 2016
# Generació massiva de logs

# S'ha d'executar com a super user

# Copiar els fitxers dels .service
cp massivelog.service /etc/systemd/system/massivelog.service
cp massivelogging.service /etc/systemd/system/massivelogging.service

# Copiar els scripts a la ruta on s'indica al fitxer del service
cp ../python/massivePython.py /var/tmp/.
cp ../python/massiveLogging.py /var/tmp/.
