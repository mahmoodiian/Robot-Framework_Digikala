*** Settings ***
Documentation  Cart Keywords
Library  SeleniumLibrary
Resource  Variables.robot
Resource  WebElements.robot
Resource  PageObjects/Header.robot

*** Variables ***
${remove_button}  ${main_cart}//*[contains(text(), "${product_name}")]//ancestor::div[3]//*[@data-cro-id="cart-delete-item-right"]

*** Keywords ***
Find Product Condition
    [Arguments]  ${product_name}
    Page Should Contain  ${product_name}

Continue To Shopping
    Click To Card Button
    Wait Until Page Contains Element  ${continue_shopping}
    Element Should Not Be Visible  ${cart_button_popup}
    Click Element  ${continue_shopping}

Remove Product
    [Arguments]  ${product_name}
    Wait Until Page Contains Element  ${main_cart}
    JavaScript Click Element  ${remove_button}

Remove Products
    [Arguments]  @{product_name}
    FOR  ${i}  IN  @{product_name}
    ${find_product}  Run Keyword And Return Status  Find Product Condition  ${i}
    Run Keyword If  ${find_product}  Remove Product From List  ${i}
    END
