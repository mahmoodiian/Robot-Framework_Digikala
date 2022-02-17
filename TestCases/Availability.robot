*** Settings ***
Documentation  Check Availability For A Product
Library  SeleniumLibrary

Resource  ../Resources/CommonFunctionality.robot
Resource  ../Resources/PageObjects/Main.robot

Test Setup  Run Keywords  Open Page  Valid Login
Test Teardown  Close Page

Force Tags  Availability


*** Variables ***
${main_category}  دیجیتال
${sub_category}  اپل
${sort}  پرفروش
${Product_name}  گوشی موبایل اپل مدل iPhone 11 Pro Max A2220 دو سیم‌ کارت ظرفیت 256 گیگابایت


*** Test Cases ***
Test Availability
    Select Sub Category  ${main_category}  ${sub_category}
    Select Sort  ${sort}
    Find And Click To Product  ${Product_name}
    Enaible Let Me Know
