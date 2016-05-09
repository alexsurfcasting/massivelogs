# Docker

En la creació massiva de logs serà necessari l'ús de containers Docker, on en cada container tindrem allotjat un servei *httpd*, cadascún apuntant 
a un port diferent.

## Instruccions

A continuació, veurem els passos necessaris per arribar a crear els containers i fer servir-los, ja sigui manualment o amb els scripts
que us proporciona aquest respositori.

1.  Instal·lar Docker

  * Si tenim un sistema Fedora 20 o inferior:
  
    > sudo yum install docker-io
  
  * Si tenim un sistema Fedora 21 o superior:
  
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
  
4. Crear els containers que contenen l'apache amb l'script

 > ./generateDockers.sh 5
 
 On:
 
 * *./generateDockers.sh* és el nom de l'script
 * *5* és el número de containers que crearem
 
5. Comprovar que els apaches dels containers funcionen adequadament

 Primer, mirarem els ports oberts al nostre sistema:
  
  > nmap localhost
  
 Al fer aquesta ordre hauríen d'aparéixer els ports dels serveis configurats al docker (8080 i succesius).
 
 Després, comprovar que podem entrar via navegador a la pàgina web que contenen els containers:
 
  > firefox localhost:8080 &disown
  
  > firefox localhost:8081 &disown
  
 

  
