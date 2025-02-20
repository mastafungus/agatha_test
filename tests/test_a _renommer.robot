*** Settings ***

Library  Browser  enable_presenter_mode=${PRESENTER_MODE}

Resource  ../resources/sauce_demo.resource

Test Setup  Browser Setup  ${URL}  ${BROWSER}
Test Teardown  Browser Teardown


*** Test Cases ***
Test A Renommer
  Login  ${username}  ${password}
  Logout
