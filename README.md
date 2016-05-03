GENERACIÓ MASSIVA DE LOGS
===========================

>Projecte ASIX 2016

>Alex del Valle

Eines:

*	Sistema **Fedora 20**
*	Bash
*	Python
*	Docker
	
Generació massiva de logs, gràcies a scripts de bash i de python fent ús
dels diferents mòduls disponibles.

**Objectiu**: Generar diferents tipus de logs massivament. Aquests logs seran útils
per als companys amb els seus projectes, ja que necessitaran gran quantitat de logs.

Docker s'utilitzará per crear diferents contenidors amb un servei, en aquest cas l'anomenat
*apache* o *httpd*, que anirán "bombardejant" els ports del sistema amb peticions per tal d'obtenir
els logs desitjats.

