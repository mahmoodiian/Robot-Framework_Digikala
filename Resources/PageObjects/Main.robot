*** Settings ***
Documentation  Main Keywords
Library  SeleniumLibrary

*** Variables ***
${let_me_know_contain}  دیگر لازم نیست خبرم کنید

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

Enaible Let Me Know
    Wait Until Page Contains Element  ${let_me_know_button}
    JavaScript Click Element  ${let_me_know_button}
    Wait Until Page Contains Element  ${let_me_know_digikala}
    JavaScript Click Element  ${let_me_know_digikala}
    Wait Until Page Contains Element  ${let_me_know_submit}
    JavaScript Click Element  ${let_me_know_submit}
    Page Should Contain  ${let_me_know_contain}

Select Book Category
    [Arguments]  ${category_name}
    ${category_xpath}  Set Variable  xpath://*[text()="${category_name}"]
    Wait Until Page Contains Element  ${category_xpath}
    Scroll To Element  ${category_xpath}
    JavaScript Click Element  ${category_xpath}
