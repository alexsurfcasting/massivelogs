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
