# Docker

En la creació massiva de logs serà necessari l'ús de containers [Docker](https://www.docker.com/), on en cada container tindrem allotjat un servei *httpd*, cadascún apuntant 
a un port diferent.

## Instruccions

A continuació, veurem els passos necessaris per instal·lar docker, iniciar-lo i crear un container manualment per tal de tenir un primer contacte
amb ell.

1.  Instal·lar Docker.

  * Si tenim un sistema Fedora 21 o inferior:
 
    ```
    $ sudo yum install docker-io
    ```
  
  * Si tenim un sistema Fedora 22 o superior:
  
    ```
     $ sudo dnf install docker
    ``` 

2.  Iniciar el servei.

  * Per activar el servei:
  
    ```
     $ sudo systemctl start docker
    ```
  
  * Per comprovar que està activat:
  
    ```
     $ sudo systemctl status docker
    ```
    
  * Si volem que s'activi cada vegada que arranquem l'equip:
  
    ```
     $ sudo systemctl enable docker
    ```

3. Crear el nostre primer container.

    ```
     $ docker run -it fedora /bin/bash
    ```
    
  Aquesta ordre crea un container amb una imatge de fedora, que si no la tenim al nostre repositori local, veurem com la busca i la
  descarrega automàticament.


Un cop fet això, haurem engegat i entrat de manera interactiva dins d'un container de Docker. És un bon primer
pas abans de començar a generar els containers amb el servei *Apache* per la generació massiva de logs.
 


 

  
