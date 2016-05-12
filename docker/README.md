# Docker

En la creació massiva de logs serà necessari l'ús de containers Docker, on en cada container tindrem allotjat un servei *httpd*, cadascún apuntant 
a un port diferent.

## Instruccions

A continuació, veurem els passos necessaris per arribar a crear els containers i fer servir-los, ja sigui manualment o amb els scripts
que us proporciona aquest respositori.

1.  Instal·lar Docker

  * Si tenim un sistema Fedora 21 o inferior:
 
    ```
    $ sudo yum install docker-io
    ```
  
  * Si tenim un sistema Fedora 22 o superior:
  
    ```
     $ sudo dnf install docker
    ``` 

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
  
  > ./buildImage.sh
  
  Aquest script crea la imatge necessària per fer els containers.
  
2. Crear els containers que contenen l'apache amb l'script
 
  > ./createContainer.sh

3. Iniciar els containers creats

 Per iniciar els containers tenim dues ocpions.
 
 * Iniciar-los i que quedin en segon pla sense poder interactuar-hi, d'aquesta manera es poden engegar tots 4 en una sola ordre.
 
   > docker start httpd{2..5}

 * Iniciar-los en primer pla, d'aquesta manera podrem veure els logs que es generen ja que es mostraran per stdout del cotainer.

   > docker start -a httpd2
 


 

  
