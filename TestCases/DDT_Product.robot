*** Settings ***
Documentation  Show Products _ Data Driven
Library  SeleniumLibrary

Resource  ../Resources/CommonFunctionality.robot
Resource  ../Resources/PageObjects/Sidebar.robot
Resource  ../Resources/PageObjects/Main.robot

Suite Setup  Run Keywords  Open Page   Valid Login
Suite Teardown  Close Page

Force Tags  ShowProducts

Test Template  Show Prouduct


*** Variables ***
${main_category}  کتاب، لوازم تحریر و هنر
${book_category_l1}  مجلات، نقشه و نشانگر کتاب
${book_category_l2}  مجلات
${book_category_l3_1}  مجلات داخلی
${book_category_l3_2}  مجلات خارجی
${filter_name}  نوع جلد
${sub_filter_name}  کاغذی
${product_name_1}  فصلنامه صنایع و معادن
${product_name_2}  مجله IRON MAN SELF-MADE MAN 1 فوریه 2020


*** Test Cases ***  MAIN CATEGORY     BOOK CATEGORY LEVEL 1  BOOK CATEGORY LEVEL 2  BOOK CATEGORY LEVEL 3   FILTER NAME     SUB FILTER NAME     PRODUCT NAME
Test Case 1         ${main_category}  ${book_category_l1}    ${book_category_l2}    ${book_category_l3_1}   ${filter_name}  ${sub_filter_name}  ${product_name_1}
Test Case 2         ${main_category}  ${book_category_l1}    ${book_category_l2}    ${book_category_l3_2}   ${filter_name}  ${sub_filter_name}  ${product_name_2}


*** Keywords ***
Show Prouduct
    [Arguments]  ${main_category}  ${book_category_l1}  ${book_category_l2}  ${book_category_l3}  ${filter_name}  ${sub_filter_name}  ${product_name}
    Select Main Category  ${main_category}
    Select Book Category  ${book_category_l1}
    Select Book Category  ${book_category_l2}
    Select Book Category  ${book_category_l3}
    Add Filters  ${filter_name}  ${sub_filter_name}
    Find And Click To Product  ${Product_name}
    Page Should Contain  ${filter_name}
    Page Should Contain  ${sub_filter_name}
