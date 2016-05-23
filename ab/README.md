# ab

L'ab és una eina utilitzada per testejar servidors Apache. Envia peticions massivament a la URL del servidor que li passem.

Pertany al paquet d'utilitats *httpd-tools*.

## Instruccions 

### Ús simple i directe de la ordre

1.  Primer, comprovar que està instal·lat el paquet.

      ```
       $ rpm -ql httpd-tools
      ```

  Si no està, l'instal·lem.
  

       $ sudo dnf install httpd-tools

      
2. Una vegada tenim la utilitat **ab**, procedim a fer les peticions al servidor que volguem.

      ```
      $ ab -n 1000 -c 20 http://192.168.2.49:8080/
      ```
      
  On:
  * *ab* és la pròpia ordre Apache Benchmark.
  * *-n* és el nombre de peticions (requests).
  * *-c* inidica les peticions concurrents.
  * *http://192.168.2.49:8080/* és la URL a testejar.

### Ús de l'script

Farem servir l'script per testejar els nostres apaches creats anteriorment als containers Docker.

Al directori de treball on ha de ser l'script:

```
$ ./massiveAb.sh 
```

**Nota**: En cas de voler fer servir una altra configuració, caldrà editar dins l'script
la variable corresponent.

  * Per canviar la IP on fer les peticions editarem la directiva *ip*.
  
    > *ip=192.168.2.49*
  
  * Per fer les peticions cap a un altre port modificarem la variable *port*.
  
	> *port1=8080*
	
  * Per variar el número de peticions a les IP i port esmentats editarem la directiva *cont*.
  
    > *cont=1*

  On:
  
   *    *192.168.2.49* serà la IP on farem les peticions.
   
   *	*8080* serà on posarem el número de port que volguem atacar.
   
   *	*1* serà el número de peticions que farem a cada IP i port.
