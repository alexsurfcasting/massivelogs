# Docker

En la creació massiva de logs serà necessari l'ús de containers Docker, on en cada container tindrem allotjat un servei *httpd*, cadascún apuntant 
a un port diferent.

## Instruccions

A continuació, veurem els passos necessaris per arribar a crear els containers i fer servir-los, ja sigui manualment o amb els scripts
que us proporciona aquest respositori.

1.  Instal·lar Docker

  * Si tenim un sistema Fedora 21 o inferior:
  
    > sudo yum install docker-io
  
  * Si tenim un sistema Fedora 22 o superior:
  
    > sudo dnf install docker
    

2.  Iniciar el servei

  * Per activar el servei:
  
    > sudo systemctl start docker
  
  * Per comprovar que està activat:
  
    > sudo systemctl status docker
    
  * Si volem que s'activi cada vegada que arranquem l'equip:
  
    > sudo systemctl enable docker
    

3. Crear el nostre primer container

  > docker run -it fedora /bin/bash
  
  Aquesta ordre crea un container amb una imatge de fedora, que si no la tenim al nostre repositori local, veurem com la busca i la
  descarrega automàticament.

Per començar a crear els containers necessaris per a fer els logs d'Apache:

1. Crear la imatge Apache

  Al directori de treball adequat, en aquest cas dins el directori on hi ha el Dockerfile:
  
  > docker build -t 'img_httpd' .
  
  On:
  
  * *-t* és el nom que tindrà la nostra imatge
  * *.* indica el Dockerfile
  
2. Crear els containers que contenen l'apache amb l'script
 
  > ./generateDockers.sh 2 img_httpd
  
  On:
  
  * *./generateDocker* és el nom de l'script
  * *2* és el número de containers a crear
  * *img_httpd* és el nom de la imatge que farem servir per crear els containers
  
3. Iniciar els containers creats

  En aquest cas, que hem creat dos containers:
  
  > docker start httpd2
  
  > docker start httpd3
  
  On:
  
  * *httpd2* i *httpd3* és el nom dels containers creats, va augmentant
  el número segons creem més containers
  
4. Entrar dins els containers i canviar la directiva ServerName

  Un cop tenim tots iniciats, haurem d'entrar dins i canviar dins del fitxer
  */etc/httpd/conf/httpd.conf* la directiva ServerName a 172.17.0.2.X:80
  
  Exemple amb el primer container:
  
  > docker attach httpd3
  
  
  > vi /etc/httpd/conf/httpd.conf
  
  > ServerName 172.17.0.2:80
  
5. Comprovar que els Apaches funcionen adequadament

  Primer, mirarem els ports oberts al nostre sistema:
  
  > nmap localhost
  
  Al fer aquesta ordre hauríen d'aparéixer els ports dels serveis configurats al docker (8080 i succesius).
  
  Després, comprovar que podem entrar via navegador a la pàgina web que contenen:
  
  > firefox localhost:8080 &disown
  
  > firefox localhost:8081 &disown
 

 

  
