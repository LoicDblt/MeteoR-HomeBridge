# MeteoR - HomeBridge
Ce programme, écrit en Python 3, permet au travers d'un Raspberry Pi
relié à une sonde Si7021 de récupérer la température et l'humidité relative
d'une pièce.

## **Sommaire**
- [HomeBridge](#meteor---homebridge)
  - [Installation](#installation)
  - [Lancement du programme](#lancement-du-programme)

## **Présentation**
Le programme MeteoR pour HomeBridge va récupérer les données de température et
d'hygrométrie, afin de les transmettre au travers d'un serveur web local à un
module HomeBridge, offrant ainsi la compatibilité HomeKit à la sonde.

## **Installation**
Il faut tout d'abord installer HomeBridge sur le Raspberry, dont les indications
sont fournies sur la page suivante :
* [HomeBridge - Install HomeBridge on Raspbian](https://github.com/homebridge/homebridge/wiki/Install-Homebridge-on-Raspbian)  

Une fois celui-ci installé, il est nécessaire d'ajouter, grâce à l'interface
d'administration, les plugins :
* [HomeBridge HTTP Temperature sensor](https://github.com/Supereg/homebridge-http-temperature-sensor#readme)
* [HomeBridge HTTP Humidity sensor](https://github.com/Supereg/homebridge-http-humidity-sensor#readme)

Finalement, il ne reste plus qu'à installer les modules ci-dessous, soit en
utilisant le fichier des dépendances mis à disposition :
```
pip install -r requirements.txt
```

Soit en installant manuellement chaque module :
* adafruit_si7021
  ```
  pip install adafruit-circuitpython-si7021
  ```
* web
  ```
  pip install web.py
  ```

## **Lancement du programme**
Une fois l'installation terminée, il ne reste plus qu'à lancer le programme à
l'aide de la commande :
```shell
python homeBridge_Si7021.py
```
