*** Settings ***

Library  Browser

Resource  ../resources/sauce_demo.resource

Test Setup  Browser Setup  ${URL}  ${BROWSER}
Test Teardown  Run Keywords  Browser Teardown


*** Test Cases ***
Test A Renommer
  Login  ${username}  ${password}
#   Next Action
