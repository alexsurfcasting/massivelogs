# ab

L'ab és una eina utilitzada per testejar servidors Apache. Envia peticions massivament a la URL del servidor que li passem.

Pertany al paquet d'utilitats *httpd-tools*.

## Instruccions 

### Ús simple i directe de la ordre

1.  Primer, comprovar que està instal·lat el paquet.

      ```
       $ rpm -ql httpd-tools
      ```

  Si no està, l'instal·lem
  
      ```
       $ sudo dnf install httpd-tools
      ```
      
2. Una vegada tenim la utilitat **ab**, procedim a fer les peticions al servidor que volguem.

      ```
       $ ab -n 1000 -c 20 http://192.168.2.49:8080/
      ```
      
  On:
  * *ab* és la pròpia ordre Apache Benchmark
  * *-n* és el nombre de peticions (requests)
  * *-c* inidica les peticions concurrents
  * *http://192.168.2.49:8080/* és la URL a testejar

### Ús de l'script

Farem servir l'script per testejar el nostres apaches creats anteriorment als containers Docker.

Al directori de treball on ha de ser l'script:

```
$ ./massiveAb.sh 
```

**Nota**: En cas de voler fer servir un altre port, caldrà editar dins l'script
la variable corresponent.

>	*port1=8080*

On:

*	*8080* serà on posarem el número de port que volguem atacar
