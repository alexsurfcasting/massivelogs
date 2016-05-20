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

Primer, haurem d'entrar dins el directori [python](https://github.com/alexsurfcasting/massivelogs/tree/master/python).

```
	$ cd python
```

Un cop al directori, tenim dos scripts. Un anomenat *massivePython* que fa servir el mòdul [**syslog**](https://docs.python.org/2/library/syslog.html), i un altre anomenat *massiveLogging* que utilitza el mòdul [**logging**](https://docs.python.org/2/library/logging.html).

Per tenir més clara la el·lecció de l'script a executar, s'ha de tenir en compte que l'script *massivePython* envia els logs de categoria més "greu" per la sortida estàndar, en canvi, l'script *massiveLogging* no embruta la pantalla i els logs generats els haurem de veure (com hem indicat al principi d'aquesta guía) a través del journalctl.
	
1.	Executar scripts.

	* Executar *massivePython*.
		
		```
			$ ./massivePython.py
		```
	
	* Executar *massiveLogging*.
	
		```
			$ ./massiveLogging.py
		```
	
	En aquest punt, es començaran a generar logs massivament, en gran quantitat
	i molt ràpid. Quan creiem que ja tenim suficient, ja podrem procedir
	a parar els scripts.

2.	Aturar scripts.

	```
		$ ^C
	```

### Mètode bash	

ídem que el mètode anterior, però en aquest cas l'script està desenvolupat en bash.

Per començar, entrar dins el directori [bash](https://github.com/alexsurfcasting/massivelogs/tree/master/bash).

```
	$ cd bash
```

Quan ja estem dintre del directori:

1.	Engegar script.

	```
		$ ./massiveBash.sh
	```

2.	Aturar.

	```
		$ ^C
	```

### Mètode service

Aquest mètode és una mica més complexe. Tracta de dos serveis, que en arrencar començaran a generar logs fins que els aturem. Funcionen gràcies a systemctl, el controlador de serveis de [systemd](https://fedoraproject.org/wiki/Systemd/es).

Com a tots els altres mètodes, per començar a treballar haurem d'entrar al directori pertinent,
en aquest cas [services](https://github.com/alexsurfcasting/massivelogs/tree/master/service).

```
	$ cd services
```

Al estar al directori de treball:

1.	Primer, haurem de copiar els fitxers del serveis al directori on es troben els *.service* del sistema.

	```
		$ cp massivelog.service /etc/systemd/system/massivelog.service
	```
	
	```
		$ cp massivelogging.service /etc/systemd/system/massivelogging.service
	```
	
	
2.	Un cop copiats, iniciarem el servei que volguem o créxem mes adequat per començar a generar logs.

	* Per inciar el servei *massivelog*:

		```
			$ sudo systemctl start massivelog.service
		```
	
	* Per iniciar el servei *massivelogging*:
		
		```
			$ sudo systemctl start massivelogging.service
		```
		
3. 	Quan créiem convenient o estem ja satisfets amb la quanitat de logs generada.

	* Per aturar el servei *massivelog*:
	
		```
			$ sudo systemctl stop massivelog.service
		```
		
	* Per aturar el servei *massivelogging*:
	
		```
			$ sudo systemctl stop massivelogging.service
		```
		
4.	En cas de que volguem tenir sempre iniciat el servei al arrencar el sistema.

	* Per habilitar el servei *massivelog* al iniciar el sistema:

		```
			$ sudo systemctl enable massivelog.service
		```
	
	* Per habilitar el servei *massivelogging* al inciar el sistema:
		
		```
			$ sudo systemctl enable massivelogging.service
		````
		
### Mètode Docker

El mètode Docker és el més complexe de tots, i a més a més, té dintre seu alguns *submètodes*. Per tal d'entendre
i fer servir correctament aquest mètode, es recomanable que llegim la [documentació oficial](https://www.docker.com).

També, sino tenim instal·lat Docker, l'haurem d'instal·lar. Per tant, com en el paràgraf anterior, és recomanable mirar
la documentació, en aquest cas la d'[instal·lació](https://docs.docker.com/engine/installation/linux/fedora/).

Tot i això, els passos per instalar·lo son:

1.	Si tenim un sistema Fedora 21 o inferior.

	```
		$ sudo yum install docker-io
	```

2.	Si tenim un sistema Fedora 22 o superior.

	```
		$ sudo dnf install docker
	```

Per començar a fer-lo servir també fa falta iniciar el servei.

```
	$ sudo systemctl start docker
```

Per tenir-lo actiu només arrencar el sistema.

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

Quan estem dintre del directori [apache](https://github.com/alexsurfcasting/massivelogs/tree/master/docker/apache):

1.	Crear la imatge a partir de la qual crearem els containers.

	```
		$ ./buildImage.sh
	```
	
	***Nota***: A l'script *buildImage.sh*, si volem canviar el nom de la imatge creada, només
	caldrà modificar la directiva *image_name*.
	
	> image_name='alex/httpd'
	
2.	Crear els containers.

	```
		$ ./createContainer.sh
	```

	***Nota***: A l'script *createContainer.sh* podrem canviar varies directives per crear els containers segons les nostres necessitats.
	
	*	Per modificar el número de containers a crear, canviarem la directiva *num_containers*.
	
		> num_containers=4

	*	Per modificar la imatge a fer servir, canviarem la directiva *image_name*.
	
		> image_name=alex/httpd

	*	Si volem fer servir un altre port on replicar l'Apache, modificarem la directiva *proxy_port*.
	
		> proxy_port=8080

3.	Iniciar els containers, si deixem els script sense modificar cap directiva inicarem 4 containers.

	```
		$ docker start httpd{2..5}
	```
	
	***Nota***: El noms dels containers creats són correlatius (*httpd2, httpd3, httpd4...*).
	
4.	També tenim l'opció d'iniciar containers en primer pla per tal de poder veure els logs per la seva sortida estàndar. En aquest cas, els haurem d'iniciar un a un.

	```
		$ docker start -a httpd2
	```
	
5.	En cas de voler entrar al container en mode interactiu.

	```
		$ docker exec -it httpd2 /bin/bash
	```
	
Després d'aquestes ordres, tindrem els containers engegats (en segon o primer pla segons les nostres preferències) amb un servei Apache en
funcionament i proporcionant una pàgina web.

Un cop arribat a aquest punt, tenim dos mètodes per fer peticions massives als containers i generar els logs.

#### Mètode ab

Primer de tot, entrarem al directori de treball [ab](https://github.com/alexsurfcasting/massivelogs/tree/master/ab) on trobarem l'script per generar les peticions.

```
	$ cd ab
```

Un cop al directori:

1.	Executar l'script.

	```
		$ ./massiveAb.sh
	```
	
	***Nota***: Com en altres scripts, en aquest també es poden editar diferents directives per adaptar-lo a les nostres necessitats.
	
	*	Per variar el número de peticions, canviarem la directiva *number_req*.
	
		> number_req=100

	* 	Per canviar el número de peticions concurrents, modificarem la directiva *number_conc*.
	
		> number_conc=20

	*	Per modificar la IP on farem les peticions, substituirem la directiva *ip*.
	
		> ip=192.168.2.49

	*	Per fer servir uns altres ports, modificarem les directives *port1, port2...* segons el número de containers que haguem creat anteriorment.
	
		> port1=8080
		> port2=8081
		> port3=8082
		> port4=8083

#### Mètode wget

Per començar, entrarem al directori de treball [wget](https://github.com/alexsurfcasting/massivelogs/tree/master/wget).

```
	$ cd wget
```

Un cop dintre del directori:

1.	Executar.

	```
		$ ./massiveWget.sh
	```

	***Nota***: En aquest script també podrem modificar les directivas segons les nostres necessitats.
	
	*	Per canviar els ports a fer les peticions, modificarem les directives *port1, port2...* segons el número de containers creats anteriorment.
	
		> port1=8080
		> port2=8081
		> port3=8082
		> port4=8083

	*	Per modificar la IP a fer les peticions, modificarem el paràmetre *ip*.
	
		> ip=192.168.2.49

	* 	Per modificar el número de peticions a fer, canviarem *cont*.
	
		> cont=4


	
