# Creació de servei

Revisant anteriors posts, es pot veure que una de les tasques pendents era crear un servei que generés logs. El procés ha estat senzill, ja que 
com tenía un script de python creat anteriorment, aquest script és el que s'executa al iniciar el servei.

Pel que respecta purament al servei, és de tipus simple i genera un *pidfile* que és guarda a /var/run/. En principi, tot funciona correctament i 
es genera una gran quantitat de logs, tot i que hi ha un problema, i és que al iniciar el servei i començar a funcionar, embruta tota la sortida estàndar,
impedint treballar correctament ja que no paren de sortir missatges. He de mirar de solventar aquest problema fent una sortida més neta, enviant els 
missatges cap a un altre lloc.

Per iniciar el servei:

  > systemctl start massivelog.service
  
  També dir, que he indicat que el servei funcionarà sota el runlevel *multi-user*.
  
## Objectius

* Millorar i depurar l'script de python

* Depurar el servei que genera logs

* Aprofundir en el funciomanet d'**ab**

* Crear un script que generi peticions amb **ab**

* Arreglar el bug dels containers de Docker al passar els logs al journal

* Millorar la pàgina test del Apache al container Docker

* Crear més containers amb el servei *httpd*
