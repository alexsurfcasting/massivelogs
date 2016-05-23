% Generació massiva de logs
% Alex del Valle
% Maig 2016

# Introducció

**Descripció**: Tots els projectes necessitaran grans volums de logs, de tipus diferents, 
per posar a prova els seus sistemes. Aquest és un projecte al servei de la resta per facilitar aquesta generació massiva de logs.  
    
**Objectiu**: Generació massiva de logs.

# Eines utilitzades

- Sistema Fedora 20
- Bash
- Python
- Apache
- Docker
- ab
- wget

# Primers passos

## Què són els logs?

Són registres oficials del sistema, usualment responen a les 5 W.

- **W**ho
- **W**hat
- **W**hen
- **W**here
- **W**hy

![](images/log.png)

## Tipus de logs

Segons la seva prioritat es poden classificar en 8 graus:

Nivell    |Tipus
----------|-----------	  |
0		  |Emergency
1		  |Alert
2		  |Critical
3		  |Error
4		  |Warning
5         |Notice
6         |Informational
7         |Debug

## Syslog i Journal

Abans, als sistemes l'eina utilitzada per registrar i visualitzar els logs era **syslog**.

Actualment, amb l'arribada de *systemd*, l'eina més utilitzada és **journalctl**. Com que el sistema que hem fet servir es Fedora 20
em centraré en el **journal** per tot el desenvolupament del projecte.

## Generar logs

És l'objectiu del projecte.

Aquests logs seràn redirigits al journalctl del sistema.

# Comencem a generar logs

## Com generem logs?

- Scripts Python
- Scripts Bash
- Serveis
- Containers Docker amb servei Apache
- Peticions massives [ab i wget]

## Com podem veure els logs generats?

```
$ journalctl -f
```

## Python

Gràcies als mòduls **syslog** y **logging**.

![](images/python.png)

## Bash

Fent ús de la utilitat **logger**.

```
$ logger -t log "això és un log"
```

## Services

Creant serveis al sistema mitjançant els scripts de Python o Bash.

```
$ sudo systemctl start massivelog
$ sudo systemctl start massivelogging
``` 

## Docker

Creant containers amb un servei Apache actiu.

![](images/docker.png)

## Com funcionen?

Redirigeixen el port 80 de l'Apache cap a un port del sistema.

Els logs dels fitxers **access_log** i **error_log** es mostren per *stdout*.

```
ln -sf /dev/stdout /var/log/httpd/acces_log
ln -sf /dev/stderr /var/log/httpd/error_log
```

Aquesta sortida també es redirigeix al journalctl.

## Peticions massives als containers

- ab
- wget

## ab

Fa peticions massives.

**Problema**: No recursives.

## wget

Genera peticions massives recursives.

**Problema**: Descarrega la web.

# Conclusions

## Conclusions generals

- He aprés a gestionar i treballar amb un repositori en [github](https://github.com/alexsurfcasting/massivelogs)
- Treballar en un entorn adequat
- Funcionament logs
- Generació logs
- Correcta documentació
- Crear presentacions amb pandoc

## Opinió personal

Segons la meva opinió, fer el projecte ha estat útil per:

- Aprende a desenvolupar-se sol davant una situació concreta
- Millorar i aprofundir en el conexeiment de les eines i recursos apresos durant el cicle
- Saber gestionar el temps per determinades tasques

# The End

## Gràcies per la vostra atenció

## ![](images/end.gif)





