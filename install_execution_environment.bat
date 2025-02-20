@echo off
ECHO Installation de l'environnement d'execution...

ECHO Creation de l'environnement virtuel...
CALL python -m venv env

ECHO Activation de l'environnement virtuel...
CALL .\env\Scripts\activate

ECHO Installation des dependances...
CALL pip install -r pip_requirements.txt

ECHO Initialisation de la librairie Browser...
CALL rfbrowser init

ECHO Installation terminee avec succes !
ECHO Pour exécuter les tests, utilisez : 
ECHO 1. env\Scripts\activate
ECHO 2. robot .
PAUSE

CALL .\env\Scripts\deactivate.bat