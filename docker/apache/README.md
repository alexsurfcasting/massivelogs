# Docker amb servei *Apache*

Per fer la generació massiva de logs, necessitarem els containers de Docker amb el servei *Apache* actiu, per tant, després
d'haber fet el nostre primer container i haber tinguit una primera presa de contacte amb aquesta utilitat, començarem
a crear-los.

## Instruccions

Per començar a crear els containers necessaris per a fer els logs d'Apache:

1. Crear la imatge Apache

  Al directori de treball adequat, en aquest cas dins el directori on hi ha el Dockerfile:
  
    ```
     $ ./buildImage.sh
    ```
    
  Aquest script crea la imatge necessària per fer els containers.
  
2. Crear els containers que contenen l'apache amb l'script

    ``` 
     $ ./createContainer.sh
    ```
    
3. Iniciar els containers creats

 Per iniciar els containers tenim dues ocpions.
 
 * Iniciar-los i que quedin en segon pla sense poder interactuar-hi, d'aquesta manera es poden engegar tots 4 en una sola ordre.
 
     ```
      $ docker start httpd{2..5}
     ```
     
 * Iniciar-los en primer pla, d'aquesta manera podrem veure els logs que es generen ja que es mostraran per stdout del cotainer.

     ```
      $ docker start -a httpd2
     ```
     
4. Un cop tenim els containers iniciats, podem començar a fer peticions massives. Gràcies a aquest repositori tenim dos mètodes:

 * [ab](https://github.com/alexsurfcasting/massivelogs/tree/master/ab)
 * [wget](https://github.com/alexsurfcasting/massivelogs/tree/master/wget)
 
També podem trobar els dos mètodes al [manual d'usuari](https://github.com/alexsurfcasting/massivelogs/blob/master/manual/userguide.md).
