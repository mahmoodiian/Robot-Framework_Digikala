*** Settings ***
Documentation  Common Functions Used In This Site
Library  SeleniumLibrary
Library  ../Libraries/Library.py
Resource  Variables.robot
Resource  Login.robot

*** Keywords ***
Open Page
    Set Selenium Speed  ${SPEED}
    Set Selenium Timeout  ${TIMEOUT}
    Set Selenium Implicit Wait  ${IMPLICIT_WAIT}
    Open Browser  ${DOMAIN}  ${BROWSER}
    Maximize Browser Window

Close Page
    Close Browser

Valid Login
    Login.Login
    Login.Check Valid Login

Scroll To Element
    [Arguments]  ${locator}
    ${x}  Get Horizontal Position  ${locator}
    ${y}  Get Vertical Position    ${locator}
    ${width}  ${height}	 Get Window Size
    Execute Javascript  window.scrollTo(${x} - ${width}, ${y} - ${height}/4.5)

JavaScript Click Element
    [Arguments]  ${xpath}
    ${new_path}  GetPath  ${xpath}
    Execute JavaScript  document.evaluate('${new_path}', document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).snapshotItem(0).click();

Invisible Element
    [Arguments]  ${xpath}
    ${new_path}  GetPath  ${xpath}
    Execute JavaScript  document.evaluate('${new_path}', document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).snapshotItem(0).style.visibility = "hidden";
