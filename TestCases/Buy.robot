*** Settings ***
Documentation  Buy Product From Digikala
Library  SeleniumLibrary

Resource  ../Resources/CommonFunctionality.robot
Resource  ../Resources/Cart.robot
Resource  ../Resources/PageObjects/Sidebar.robot
Resource  ../Resources/PageObjects/Main.robot

Test Setup  Run Keywords  Open Page   Valid Login
Test Teardown  Close Page

Force Tags  Buy


*** Variables ***
${main_category}  دیجیتال
${sub_category}  اپل
@{filters}  نوع فروشنده  دیجی‌کالا  برند  اپل
${sort}  پرفروش
${Product_name}  گوشی موبایل اپل مدل iPhone 13 Pro Max A2644 دو سیم‌ کارت ظرفیت 128 گیگابایت و رم 6 گیگابایت
${page_contain}  انتخاب زمان ارسال


*** Test Cases ***
Test Buy
    Select Sub Category  ${main_category}  ${sub_category}
    Add Filters  @{filters}
    Select Sort  ${sort}
    Find And Click To Product  ${Product_name}
    Buy Product
    Continue To Shopping
    Page Should Contain  ${page_contain}
