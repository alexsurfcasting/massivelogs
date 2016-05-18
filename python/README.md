# Script python

Scripts que generen gran quantitat de logs. Estan desenvolupats en [Python](https://www.python.org/).

## Instruccions

1.  Descarregar el repositori.

	```
		$ git clone https://github.com/alexsurfcasting/massivelogs.git
	```
	
2.  Entrar al directori python.

	```
		$ cd python
	```

3.  Un cop al directori, tenim dos scripts que generen logs. L'script *massivePython* genera logs amb missatges random y de diferents
serveis, en canvi l'script *massiveLogging* genera i acumula logs i al missatge indica el seu nivell, ja sigui warning, error...

  *  Per executar *massivePython*.
    
 	```
 		$ ./massivePython
 	```

  *  Per executar *massiveLogging*.
  
	```
		$ ./massiveLogging
	```
  
4. Si és volen veure tots els logs que genera és recomendable, a un altre terminal, obrim el journal.


	```
		$ journalctl -f
	```
  
  
