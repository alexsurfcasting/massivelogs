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

ídem que el mètode anterior, però en aquest cas l'script està desenvolupat en bash.

Per començar, entrar dins el directori [bash](https://github.com/alexsurfcasting/massivelogs/tree/master/bash)

```
	$ cd bash
```

Quan ja estem dintre del directori

1.	Donar permisos d'execució

	```
		$ chmod +x massiveBash.sh
	```

2.	Engegar script

	```
		$ ./massiveBash.sh
	```

3.	Aturar

	```
		$ ^C
	```

### Mètode service

Aquest mètode és una mica més complexe, tracta d'un servei que en arrencar començara a generar logs
fins que el parem. Funciona gràcies a systemd ... **EXPLICAR SYSTEMD**

Com a tots els altres mètodes, per començar a treballar haurem d'entrar al directori pertinent,
en aquest cas [service](https://github.com/alexsurfcasting/massivelogs/tree/master/service)

```
	$ cd service
```

Al estar al directori de treball

1.	Primer, haurem de copiar el fitxer del servei al directori on es troben els *.service* del sistema

	```
		$ cp massivelog.service /etc/systemd/system/massivelog.service
	```
	
2.	Un cop copiat, iniciar el servei per començar a generar logs

	```
		$ sudo systemctl start massivelog.service
	```
	
3. 	Quan créiem convenient o estem ja satisfets amb la quanitat de logs generada

	```
		$ sudo systemctl stop massivelog.service
	```

4.	En cas de que volguem tenir sempre iniciat el servei al arrencar el sistema

	```
		$ sudo systemctl enable massivelog.service
	```
	
### Mètode Docker

El mètode Docker és el més complexe de tots, i a més a més, té dintre seu alguns *submètodes*. Per tal d'entendre
i fer servir correctament aquest mètode, es recomanable que llegim la [documentació oficial](https://www.docker.com).

També, sino tenim instal·lat Docker, l'haurem d'instal·lar. Per tant, com en el paràgraf anterior, és recomanable mirar
la documentació, en aquest cas la d'[instal·lació](https://docs.docker.com/engine/installation/linux/fedora/).

Tot i això, els passos per instalar·lo son:

1.	Si tenim un sistema Fedora 21 o inferior

	```
		$ sudo yum install docker-io
	```

2.	Si tenim un sistema Fedora 22 o superior

	```
		$ sudo dnf install docker
	```

Per començar a fer-lo servir també fa falta iniciar el servei

```
	$ sudo systemctl start docker
```

Per tenir-lo actiu només arrencar el sistema

```
	$ sudo systemctl enable docker
```

Una vegada instal·lat i actiu el sistema, cja podrem començar a crear la imatges i els containers d'Apache, preparats
per a la generació de logs.

Abans de tots, per tal de crear les imatges i els containers, ens posarem al directori de treball adequat, on trobarem
aquests fitxers i el Dockerfile.

```
	$ cd apache
```

Quan estem dintre del directori [apache](https://github.com/alexsurfcasting/massivelogs/tree/master/docker/apache)

1.	Donar permisos d'execució als scripts

	```
		$ chmod +x buildImage.sh
		$ chmod +x createContainer.sh
	```
	
2.	Crear la imatge a partir de la qual crearem els containers

	```
		$ ./buildImage.sh
	```
	
	***Nota***: A l'script *buildImage.sh*, si volem canviar el nom de la imatge creada, només
	caldrà modificar la directiva *image_name*.
	
	> image_name='alex/httpd'
	
3.	Crear els containers

	```
		$ ./createContainer.sh
	```

	***Nota***: A l'script *createContainer.sh* podrem canviar varies directives per crear els containers segons les nostres necessitats.
	
	*	Per modificar el número de containers a crear, canviarem la directiva *num_containers*
	
		> num_containers=4

	*	Per modificar la imatge a fer servir, canviarem la directiva *image_name*
	
		> image_name=alex/httpd

	*	Si volem fer servir un altre port on replicar l'Apache, modificarem la directiva *proxy_port*
	
		> proxy_port=8080

4.	Iniciar els containers, si deixem els script sense modificar cap directiva inicarem 4 containers.

	```
		$ docker start httpd{2..5}
	```
	
	***Nota***: El noms dels containers creats són correlatius (*httpd2, httpd3, httpd4...*)
	
5.	També tenim l'opció d'iniciar containers en primer pla per tal de poder veure els logs per la seva sortida estàndar. En aquest cas, els haurem d'iniciar un a un.

	```
		$ docker start -a httpd2
	```
	
6.	En cas de voler entrar al container en mode interactiu

	```
		$ docker exec -it httpd2 /bin/bash
	```
	

	
	
