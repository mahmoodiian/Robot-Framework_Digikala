*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Cart.robot
Resource  ../Resources/PageObjects/Sidebar.robot
Resource  ../Resources/PageObjects/Main.robot

*** Variables ***
${main_category}  دیجیتال
${sub_category}  اپل
@{filters}  نوع فروشنده  دیجی‌کالا  برند  اپل
${sort}  پرفروش
${page_contain}  انتخاب زمان ارسال

*** Keywords ***
Select Category
    Select Sub Category  ${main_category}  ${sub_category}

Set Filter And Sort
    Add Filters  @{filters}
    Select Sort  ${sort}

Buy Product And Go To Shopping
    [Arguments]  ${Product_name}
    Find And Click To Product  ${Product_name}
    Buy Product
    Continue To Shopping

Assertion
    Page Should Contain  ${page_contain}