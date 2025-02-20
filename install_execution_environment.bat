@echo off
ECHO Installation de l'environnement d'exécution...

ECHO Création de l'environnement virtuel...
CALL python -m venv env

ECHO Activation de l'environnement virtuel...
CALL .\env\Scripts\activate

ECHO Installation des dépendances...
CALL pip install -r pip_requirements.txt

ECHO Initialisation de la librairie Browser...
CALL rfbrowser init

ECHO Installation terminée avec succès !
ECHO Pour exécuter les tests, utilisez : 
ECHO 1. .\env\Scripts\activate
ECHO 2. robot tests/test.robot
PAUSE

CALL .\env\Scripts\deactivate.bat