# Serveis generadors de logs

Aquests serveis funcionen gràcies a systemd, que és un administrador de serveis que proporciona Fedora. Abans de fer servir el servei
**massivelog** i **massivelogging** (tot i que explicaré com fer-los servir pas a pas), recomano llegir la documentació oficial de Fedora sobre els serveis i el 
systemd. La podràs trobar clicant [aquí](https://fedoraproject.org/wiki/Systemd/es).

## Instruccions

1.  Copiar els fitxer del serveis a /etc/systemd/system.

	```
		$ sudo cp massivelog.service /etc/systemd/system/massivelog.service
	```
	
	```
		$ sudo cp massivelogging.service /etc/systemd/system/massivelogging.service
	```
	
	***Nota***: Haurem de tenir en compte que la directiva *ExecStarts* dels fitxers .service contingui la ruta correcta
	d'on es troben els scripts de Python.
	
2.  Iniciar el serveis per començar a generar logs de forma massiva.

	*	Per iniciar el servei *massivelog*:
	
		```
			$ sudo systemctl start massivelog.service
		```
  
	*	Per iniciar el servei *massivelogging*:
	
		```
			$ sudo systemctl start massivelogging.service
		```
		
3.  Aturar el serveis quan creiem convenient.

	* Per aturar el servei *massivelog*:

		```
			$ sudo systemctl stop massivelog.service
		```

	* Per aturar el servei *massivelogging*:
	
		```
			$ sudo systemctl stop massivelogging.service
		```
		
4.	Si volem tenir el servei actiu i generant logs només arrencar el sistema.

	* Per tenir actiu *massivelog*:
	
		```
			$ sudo systemctl enable massivelog.service
		```
	
	* Per tenir actiu *massivelogging*:
	
		```
			$ sudo systemctl enable massivelogging.service
		```


### Instruccions script

Si no volem fer tot el procés anterior, hi ha un script que fa tot aquest procés automàticament. Per això, només hem d'executar-lo. 

**Important**: Aquest script s'ha d'executar amb un usuari amb permisos d'administració.

```
	$ sudo ./createServices.sh
```
