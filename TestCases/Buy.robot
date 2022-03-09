*** Settings ***
Documentation  Buy Product From Digikala
Library  SeleniumLibrary
Resource  ../Resources/CommonFunctionality.robot
Resource  ../Resources/R_Buy.robot
Test Setup  Run Keywords  Open Page   Valid Login
Test Teardown  Close Page
Force Tags  Buy

*** Variables ***
${Product_name}  گوشی موبایل اپل مدل iPhone 13 Pro Max A2644 دو سیم‌ کارت ظرفیت 128 گیگابایت و رم 6 گیگابایت

*** Test Cases ***
Test Buy
    Select Category
    Set Filter And Sort
    Buy Product And Go To Shopping  ${Product_name}
    Assertion
