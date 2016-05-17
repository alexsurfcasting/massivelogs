# GUIA D'USUARI

## Introducció

El repositori **massivelogs** dóna diferents mètodes per tal de fer una 
creació massiva, és a dir, grans quantitats, de logs.

En aquesta guía trobarem els diferents mètodes explicats un a un, per tal 
que l'usuari faci servir el que trobi més adhient a les seves necessitats.

Cal tenir en compte que no tots els logs generats es veuran per pantalla
a la sortida estàndar (stdout). Només veurem per aquesta sortida els logs més *crítics*.
Per veure la totalitat de logs generats, és recomanable, en una altre terminal fer:

```
	$ journalctl -f
```

## Començament

Primer de tot, haurem de descarregar el [repositori](https://github.com/alexsurfcasting/massivelogs) 
a la nostra màquina per poder treballar amb ell de manera local.

```
	$ git clone https://github.com/alexsurfcasting/massivelogs.git
```

Un cop descarregat on volguem, haurem de posar-nos a la ruta on l'hem
descarregat per poder treballar més còmodament.

```
	$ cd massivelogs
```

Bé, ara que ja estem en un entorn de treball adequat, podem començar a veure
els diferents mètodes que trobem en aquest repositori.
 
### Mètode python

Aquest mètode és el mes senzill. 

Primer, haurem d'entrar dins el directori [python](https://github.com/alexsurfcasting/massivelogs/tree/master/python)

```
	$ cd python
```

Un cop al directori, executarem l'script.

1.	Donar permisos d'execució

	```
		$ chmod +x massivePython.py
	```
	
2.	Executar l'script

	```
		$ ./massivePython.py
	```
	
	En aquest punt, es començaran a generar logs massivament, en gran quantitat
	i molt ràpid. Quan creiem que ja tenim suficient, ja podrem procedir
	a parar el script.

3.	Aturar l'script

	```
		$ ^C
	```

### Mètode bash	
	
### Mètode service

Aquest mètode és una mica més complexe, tracta d'un servei que en arrencar començara a generar logs
fins que el parem. Funciona gràcies a systemd
