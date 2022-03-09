*** Settings ***
Library  SeleniumLibrary
Resource  PageObjects/Sidebar.robot
Resource  PageObjects/Main.robot

*** Keywords ***
Select Book Category
    [Arguments]  ${category_name}
    ${category_xpath}  Set Variable  xpath://*[text()="${category_name}"]
    Wait Until Page Contains Element  ${category_xpath}
    Scroll To Element  ${category_xpath}
    JavaScript Click Element  ${category_xpath}

Go To Product
    [Arguments]  ${main_category}  ${book_category_l1}  ${book_category_l2}  ${book_category_l3}  ${filter_name}  ${sub_filter_name}  ${product_name}
    Select Main Category  ${main_category}
    Select Book Category  ${book_category_l1}
    Select Book Category  ${book_category_l2}
    Select Book Category  ${book_category_l3}
    Add Filters  ${filter_name}  ${sub_filter_name}
    Find And Click To Product  ${Product_name}
    Page Should Contain  ${filter_name}
    Page Should Contain  ${sub_filter_name}
