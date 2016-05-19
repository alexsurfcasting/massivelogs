# wget

La utilitat wget permet descarregar els arxius d'una web. És una eina molt extensa i que conté diverses opcions, per tant, abans de fer qualsevol cosa recomano llegir el seu ![manual](https://www.gnu.org/software/wget/manual/wget.html).

## Instruccions

### Instruccions bàsiques

* Per tal de descarregar la pàgina principal d'una web:

	```
		$ wget http://192.168.2.49:8080
	```

  On:
    * *wget* és la pròpia ordre
    * *http:192.168.2.49:8080* és la URL de la pàgina web que volem
    
* Per descarregar totes les pàgines d'una web

	```
		$ wget -r http://192.168.2.49:8080
	```
	
  On:
    * *wget* és la pròpia ordre
    * *-r* opció recursiva
    * *http://192.168.2.49:8080* és la URL de la pàgina web que volem

### Ús de l'script

Farem servir l'script per testejar els nostres servidors *Apache* residents a containers de Docker.

Al directori de treball:

	```
		$ ./massiveWget.sh
	```
	
	***Notes***:
	
	*	En cas de voler fer servir un altre port, caldrà editar dins de l'script la variable corresponent.


### Ús de l'script

Farem servir l'script per testejar els nostres servirdors *Apache* residents a container de Docker.

Al directori de treball:


	```
		$ ./massiveWget.sh 
	```
  
	***Notes***: 

		*	En cas de voler fer servir un altre port, caldrà editar dins de
		l'script la variable corresponent.
	
		> *port1=8080*
	
		On:
		
			*	*8080* serà el port que volem atacar.


		*	En cas de voler fer les peticions a una altre ip, caldrà editar dins 
		de l'script la variable corresponent.
	
		> *ip=192.168.2.49*
	
		On:
		
			*	*192.168.2.49* serà la IP  la qual farem les peticions.
		
