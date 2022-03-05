*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/PageObjects/Main.robot


*** Variables ***
${main_category}  دیجیتال
${sub_category}  اپل
${sort}  پرفروش
${Product_name}  گوشی موبایل اپل مدل iPhone 11 Pro Max A2220 دو سیم‌ کارت ظرفیت 256 گیگابایت


*** Test Cases ***
Select Category
    Select Sub Category  ${main_category}  ${sub_category}

Sort
    Select Sort  ${sort}

Go To Product
    Find And Click To Product  ${Product_name}


    Enaible Let Me Know