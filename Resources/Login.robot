*** Settings ***
Documentation  Login Keywords
Library  SeleniumLibrary
Resource  Variables.robot
Resource  PageObjects/Header.robot

*** Variables ***
${verify_login_contain}  خروج

*** Keywords ***
Login
    Click To Login Button
    Wait Until Page Contains Element  ${username_input}
    Input Text  ${username_input}  ${USERNAME}
    Click Element  ${submit}
    Wait Until Page Contains Element  ${password_input}
    Input Text  ${password_input}  ${PASSWORD}
    Click Element  ${submit}

Check Valid Login
    Wait Until Page Contains Element  ${account_button}
    Click Element  ${account_button}
    Page Should Contain  ${verify_login_contain}
