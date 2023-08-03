# MeteoR - HomeBridge
Ce programme, écrit en Python 3, permet au travers d'un Raspberry Pi
relié à une sonde Si7021 de récupérer la température et l'humidité relative
d'une pièce.

## **Sommaire**
- [HomeBridge](#homebridge)
  - [Installation](#installation)
  - [Lancement du programme](#lancement-prog)

## **Présentation**
Le programme MeteoR pour HomeBridge va récupérer les données de température et
d'hygrométrie, afin de les transmettre au travers d'un serveur web local à un
module HomeBridge, offrant ainsi la compatibilité HomeKit à la sonde.

## **Installation**
### HomeBridge
Il faut tout d'abord installer HomeBridge sur le Raspberry, dont les indications
sont fournies sur la page suivante :
* [HomeBridge - Install HomeBridge on Raspbian](https://github.com/homebridge/homebridge/wiki/Install-Homebridge-on-Raspbian)  

Une fois celui-ci installé, il est nécessaire d'ajouter, grâce à l'interface
d'administration, les plugins :
* [HomeBridge HTTP Temperature sensor](https://github.com/Supereg/homebridge-http-temperature-sensor#readme)
* [HomeBridge HTTP Humidity sensor](https://github.com/Supereg/homebridge-http-humidity-sensor#readme)

### Docker
Un fichier *Dockerfile* est fourni afin de simplifier l'installation du
programme.
Pour le compiler l'image, il suffit de lancer la commande :
```shell
docker build -t meteor-hb:latest .
```

Puis de lancer le container :
```shell
docker run  -d --restart unless-stopped --device /dev/i2c-1 -p 0.0.0.0:8080:8080 meteor-hb:latest
```

### Manuelle
#### Dépendances
Il ne reste plus qu'à installer les modules ci-dessous, soit en
utilisant le fichier des dépendances mis à disposition :
```shell
pip install -r requirements.txt
```

Soit en installant manuellement chaque module :
* adafruit_si7021
```shell
  pip install adafruit-circuitpython-si7021
```
* web
```shell
  pip install web.py
```

#### Lancement du programme
Une fois l'installation terminée, il ne reste plus qu'à lancer le programme à
l'aide de la commande :
```shell
python homeBridge_Si7021.py
```