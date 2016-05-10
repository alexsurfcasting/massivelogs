# Servei massivelog

El servei massivelog funciona gràcies a systemd, que és un administrador de serveis que proporciona Fedora. Abans de fer servir el servei
**massivelogs** (tot i que explicaré com fer-lo servir pas a pas), recomano llegir la documentació oficial de Fedora sobre els serveis i el 
systemd. La podràs trobar clicant [aquí](https://fedoraproject.org/wiki/Systemd/es).

## Instruccions

1.  Copiar el fitxer del servei a /etc/systemd/system

  > cp massivelog.service /etc/systemd/system/massivelog.service
  
2.  Iniciar el servei per començar a generar logs de forma massiva

  > systemctl start massivelog.service
  
3.  Aturar el servei quan creiem convenient

  > systemctl stop massivelog.service
