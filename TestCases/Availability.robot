*** Settings ***
Documentation  Check Availability For A Product
Library  SeleniumLibrary
Resource  ../Resources/CommonFunctionality.robot
Resource  ../Resources/R_Availability.robot
Test Setup  Run Keywords  Open Page  Valid Login
Test Teardown  Close Page
Force Tags  Availability

*** Variables ***
${Product_name}  گوشی موبایل اپل مدل iPhone 11 Pro Max A2220 دو سیم‌ کارت ظرفیت 256 گیگابایت

*** Test Cases ***
Test Availability
    Select Category
    Set Sort
    Go To Product  ${Product_name}
    Enaible Let Me Know
