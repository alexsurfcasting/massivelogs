# ab

L'ab és una eina utilitzada per testejar servidors Apache. Envia peticions massivament a la URL del servidor que li passem.

## Instruccions 

### Ús simple i directe de la ordre

1.  Primer, comprovar que està instal·lat el paquet.

  > rpm -ql ab

  Si no està, l'instal·lem
  
  > sudo dnf install ab
  
2. Una vegada tenim la utilitat **ab**, procedim a fer les peticions al servidor que volguem.

  > ab -n 1000 -c 20 http://192.168.2.49:8080/
  
  On:
  * *ab* és la pròpia ordre Apache Benchmark
  * *-n* és el nombre de peticions (requests)
  * *-c* inidica les peticions concurrents
  * *http://192.168.2.49:8080/* és la URL a testejar

### Ús de l'script

Farem servir l'script per testejar el nostres apaches creats anteriorment als containers Docker

Al directori de treball on ha de ser l'script:

> ./massiveAb.sh 1000 50 8080

On:

* *./massiveAb.sh* és el nom de l'script
* *1000* és el nombre de peticions
* *50* indica el nombre de peticions concurrents
* *8080* defineix el port sobre el qual fer les peticions
