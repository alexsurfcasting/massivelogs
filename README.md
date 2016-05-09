# GENERACIÓ MASSIVA DE LOGS

*Projecte ASIX 2016*

**Títol**: Generació massiva de logs

**Autor**: Alex del Valle

**Descripció**: Tots els projectes necessitaran grans volums de logs, de tipus diferents, per posar a prova els seus sistemes. Aquest és un projecte al servei de la resta per facilitar aquesta generació massiva de logs.

**Objectiu**: Generar diferents tipus de logs massivament. Aquests logs seran útils
per als companys amb els seus projectes, ja que necessitaran gran quantitat de logs.

Eines:

*	Sistema **Fedora 20**
*	Bash
*	Python
*	Docker

Docker s'utilitzará per crear diferents contenidors amb un servei, en aquest cas l'anomenat
*apache* o *httpd*, que anirán "bombardejant" els ports del sistema amb peticions per tal d'obtenir
els logs desitjats.

