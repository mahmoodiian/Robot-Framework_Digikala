*** Settings ***
Documentation  Remove Products From Cart
Library  SeleniumLibrary
Resource  ../Resources/CommonFunctionality.robot
Resource  ../Resources/R_RemoveProuduct.robot
Test Setup  Run Keywords  Open Page   Valid Login
Test Teardown  Close Page
Force Tags  RemoveProducts

*** Variables ***
${product_name}  گوشی موبایل اپل مدل iPhone 13 Pro Max A2644 دو سیم‌ کارت ظرفیت 128 گیگابایت و رم 6 گیگابایت

*** Test Cases ***
Test Remove Product
    Go To Cart
    Remove Product  ${product_name}
    Assrtions
