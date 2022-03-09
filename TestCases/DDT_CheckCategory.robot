*** Settings ***
Documentation  Check Category _ Data Driven
Library  SeleniumLibrary
Resource  ../Resources/CommonFunctionality.robot
Resource  ../Resources/R_DDT_CheckCategory.robot
Suite Setup  Run Keywords  Open Page  Valid Login
Suite Teardown  Close Page
Force Tags  CheckCategory
Test Template  Go To Product

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
Domestic Magazine   ${main_category}  ${book_category_l1}    ${book_category_l2}    ${book_category_l3_1}   ${filter_name}  ${sub_filter_name}  ${product_name_1}
Foreign Magazine    ${main_category}  ${book_category_l1}    ${book_category_l2}    ${book_category_l3_2}   ${filter_name}  ${sub_filter_name}  ${product_name_2}
