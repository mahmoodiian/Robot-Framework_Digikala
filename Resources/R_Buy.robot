*** Settings ***
Library  SeleniumLibrary
Resource  Cart.robot
Resource  PageObjects/Sidebar.robot
Resource  PageObjects/Main.robot

*** Variables ***
${main_category}  دیجیتال
${sub_category}  اپل
@{filters}  نوع فروشنده  دیجی‌کالا  برند  اپل
${sort}  پرفروش
${Product_name}  گوشی موبایل اپل مدل iPhone 13 Pro Max A2644 دو سیم‌ کارت ظرفیت 128 گیگابایت و رم 6 گیگابایت
${page_contain}  انتخاب زمان ارسال


*** Keywords ***
Select Category
    Select Sub Category  ${main_category}  ${sub_category}

Filter
    Add Filters  @{filters}

Sort
    Select Sort  ${sort}

Buy
    Find And Click To Product  ${Product_name}
    Buy Product

Shoping
    Continue To Shopping

Assertion
    Page Should Contain  ${page_contain}