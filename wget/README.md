# wget

La utilitat wget permet descarregar els arxius d'una web. És una eina molt extensa i que conté diverses opcions, per tant, abans de fer qualsevol cosa recomano llegir el seu ![manual](https://www.gnu.org/software/wget/manual/wget.html)

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

* Si volem fer servir l'script, simplement, al directori de treball

	```
		$ ./massiveWget.sh 
	```
  
