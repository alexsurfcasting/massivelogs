# GENERACIÓ MASSIVA DE LOGS

*Projecte ASIX 2016*

**Títol**: Generació massiva de logs

**Autor**: Alex del Valle

**Descripció**: Tots els projectes necessitaran grans volums de logs, de tipus diferents, per posar a prova els seus sistemes. Aquest és un projecte al servei de la resta per facilitar aquesta generació massiva de logs.

**Objectiu**: Generar diferents tipus de logs massivament. Aquests logs seran útils
per als companys amb els seus projectes, ja que necessitaran gran quantitat de logs.

Eines utilitzades:

*	Sistema **Fedora 20**
*	Bash
*	Python
*	Docker
*	Servei Apache (httpd)
*	Apache Benchmark
*	wget

[![Docker](http://s32.postimg.org/ejjpvqlqp/docker.png)](https://docker.org/)
[![Apache](http://s32.postimg.org/gm2ksyd8x/apache_logo.png)](https://httpd.apache.org/)
[![Fedora](http://s32.postimg.org/505w7wpsh/Fedora_logo.png)](https://getfedora.org/es/)
[![Python](http://s32.postimg.org/kxw8f2qhd/python_logo.png)](https://www.python.org/)

## Introducció a massivelogs

Gràcies a aquest repositori es podran generar logs amb les eines esmentades anteriorment. Per començar, recomano llegir el [manual d'usuari](https://github.com/alexsurfcasting/massivelogs/blob/master/manual/userguide.md) o els readmes situats a cada directori. 

### Python

Fent l'ús d'scripts desenvolupats en Python podrem generar gran quantitats de logs de manera ràpida i senzilla al nostre sistema. Podrem trobar tot el necessari dins del [directori](https://github.com/alexsurfcasting/massivelogs/tree/master/python).

### Services

Instal·lant al nostre sistema els services que trobarem al [directori](https://github.com/alexsurfcasting/massivelogs/tree/master/services) podrem generar gran quantitat de logs sempre que volguem només engegant aquest serveis quan creiem necessari.

### Docker

Utilitzant containers de Docker amb un servei *Apache* actiu en ells, podrem generar massivament logs d'aquest servei. És un mètode una mica més complexe però trobarem tot el que necessitem dins el seu [directori](https://github.com/alexsurfcasting/massivelogs/tree/master/docker).

#### ab

Una vegada tinguem els containers actius, amb la eina ab podrem fer les peticions massives per tal de generar logs. [Aquí](https://github.com/alexsurfcasting/massivelogs/tree/master/ab) trobarem el material per fer-ho.

#### wget

Si ho preferim, podrem fer servir la utilitat wget per les peticions, només haurem d'entrar al seu [directori](https://github.com/alexsurfcasting/massivelogs/tree/master/wget).
