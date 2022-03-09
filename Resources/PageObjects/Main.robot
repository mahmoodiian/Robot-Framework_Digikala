*** Settings ***
Documentation  Main Keywords
Library  SeleniumLibrary

*** Keywords ***
Run Condition Find Product
    [Arguments]  ${Product_name}
    Page Should Contain  ${Product_name}

Run Condition Next Page
    Element Should Be Visible  ${next_page}

Scroll Products
    Scroll To Element  ${last_product}
    Sleep  1s

Select Sort
    [Arguments]  ${sort}
    ${sort_button}  Set Variable  ${sort_buttons}//*[contains(text(),"${sort}")]
    Wait Until Page Contains Element  ${sort_button}
    JavaScript Click Element  ${sort_button}

Click To Product
    [Arguments]  ${product_link}
    Scroll To Element  ${product_link}
    JavaScript Click Element  ${product_link}
    ${handle}  Get Window Handles
    Switch Window  ${handle}[1]

Click To Next Page
    JavaScript Click Element  ${next_page}
    Sleep  1s

Find And Click To Product
    [Arguments]  ${Product_name}
    ${product_link}  Set Variable  ${products_section}//*[contains(text(),"${Product_name}")]//ancestor::a
    FOR  ${i}  IN RANGE  100
    ${condition_find_product}  Run Keyword And Return Status  Run Condition Find Product  ${Product_name}
    ${condition_find_next_page}  Run Keyword And Return Status  Run Condition Next Page

    Run Keyword If  ${condition_find_product}  Exit For Loop
    ...  ELSE IF  ${condition_find_next_page}  Click To Next Page
    ...  ELSE  Scroll Products
    END
    Click To Product  ${product_link}

Buy Product
    Wait Until Page Contains Element  ${add_to_cart}
    Wait Until Element Is Enabled  ${add_to_cart}
    Scroll To Element  ${add_to_cart}
    JavaScript Click Element  ${add_to_cart}
