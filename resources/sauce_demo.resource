*** Settings ***

Library  Browser

Variables  ../test_objects/TO_sauce.py


*** Variables ***

${URL}  https://www.saucedemo.com/
${BROWSER}  chromium
${USERNAME}  standard_user
${PASSWORD}  secret_sauce


*** Keywords ***
Browser Setup
  [Documentation]  Initialise le navigateur, le contexte et la fenêtre.
  ...
  ...  URL = URL à laquelle il faut accéder
  ...  Browser = navigateur à utiliser (chromium, firefox, webkit)
  [Arguments]  ${URL}  ${Browser}
  New Browser  ${Browser}  headless=false
  New Context  viewport={'width': 1280, 'height': 720}
  New Page  ${URL}  wait_until=domcontentloaded

Browser Teardown
  [Documentation]  Ferme la page, le contexte et le navigateur courant.
  Close Page
  Close Context
  Close Browser

Login
  [Documentation]  Connexion à l'application
  [Arguments]  ${USERNAME}  ${PASSWORD}
  Wait For Elements State  ${TO_HOME_PAGE}[LBL_SWAG_LABS]  visible  300
  Input Text  ${TO_HOME_PAGE}[FLD_USER_NAME]  ${USERNAME}
  Input Text  ${TO_HOME_PAGE}[FLD_PASSWORD]  ${PASSWORD}
  Click  ${TO_HOME_PAGE}[BTN_LOGIN]

Input Text
  [Documentation]  Permet de valoriser le champ passé dans le paramètre ``Element`` avec la valeur ``Value`` en
  ...  vérifiant au préalable sa présence dans la page. ``Timeout`` définit le temps d'attente en secondes avant de
  ...  renvoyer un échec. Permet de traiter des données cryptées avec CryptoLibrary si l'environnement d'exécution est
  ...  correctement paramêtré.
  [Arguments]  ${Element}  ${Value}  ${Timeout}=5
  Wait For Elements State  ${Element}  visible  ${Timeout}
  Fill Text  ${Element}  ${Value}

Next Action
  [Documentation]  Action suivante
  Wait For Elements State  ${TO_PRODUCTS_PAGE}[LBL_PRODUCT_SORT_CTN]  visible  300
