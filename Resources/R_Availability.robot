*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/PageObjects/Main.robot

*** Variables ***
${main_category}  دیجیتال
${sub_category}  اپل
${sort}  پرفروش

*** Keywords ***
Select Category
    Select Sub Category  ${main_category}  ${sub_category}

Set Sort
    Select Sort  ${sort}

Go To Product
    [Arguments]  ${Product_name}
    Find And Click To Product  ${Product_name}
