*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/PageObjects/Main.robot

*** Variables ***
${main_category}  دیجیتال
${sub_category}  اپل
${sort}  پرفروش
${let_me_know_contain}  دیگر لازم نیست خبرم کنید

*** Keywords ***
Select Category
    Select Sub Category  ${main_category}  ${sub_category}

Set Sort
    Select Sort  ${sort}

Go To Product
    [Arguments]  ${Product_name}
    Find And Click To Product  ${Product_name}

Enaible Let Me Know
    Wait Until Page Contains Element  ${let_me_know_button}
    JavaScript Click Element  ${let_me_know_button}
    Wait Until Page Contains Element  ${let_me_know_digikala}
    JavaScript Click Element  ${let_me_know_digikala}
    Wait Until Page Contains Element  ${let_me_know_submit}
    JavaScript Click Element  ${let_me_know_submit}
    Page Should Contain  ${let_me_know_contain}
