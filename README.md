# Test d'automatisation Web avec Robot Framework

Ce projet contient un test automatisé simple utilisant Robot Framework et la librairie Browser (Playwright).

## Prérequis

### Python
- Téléchargez et installez [Python 3.10.11](https://www.python.org/downloads/release/python-31011/#:~:text=Windows)
- Assurez-vous que Python est ajouté au PATH Windows lors de l'installation :

![Add Python to PATH](https://github.com/user-attachments/assets/22f85d47-099c-4bb7-af40-f50fe93422d7)

## Installation et Exécution

1. **Clonez le dépôt**
   ```bash
   git clone https://github.com/mastafungus/agatha_test
   cd agatha_test
   ```

2. **Installez les dépendances**
   - Exécutez le fichier `install_execution_environment.bat` présent à la racine du projet

3. **Activez l'environnement virtuel**
   ```bash
   env\Scripts\activate
   ```

4. **Lancez les tests**

   Mode normal (vitesse réelle) :
   ```bash
   robot -v PRESENTER_MODE:False tests/
   ```

   Mode présentation (vitesse réduite) :
   ```bash
   robot -v PRESENTER_MODE:True tests/
   ```

## Modes d'exécution

Le test peut être exécuté en deux modes différents :

- **Mode normal** : Exécution à vitesse réelle.
- **Mode présentation** : Exécution ralentie avec mise en évidence visuelle des actions.


## Structure du Projet
```
agatha_test/
├── resources/          # Ressources Robot Framework
├── test_objects/       # Objets de test
├── tests/             # Fichiers de test
└── README.md
```

## Notes
- L'environnement virtuel (`env`) est créé automatiquement
- La librairie Browser (Playwright) et ses dépendances sont installées automatiquement
- Les résultats des tests seront générés dans le dossier courant

## Rapport de Test
Après l'exécution, vous trouverez les rapports suivants :
- `log.html` : Journal détaillé des tests
- `report.html` : Rapport de synthèse
- `output.xml` : Résultats au format XML
