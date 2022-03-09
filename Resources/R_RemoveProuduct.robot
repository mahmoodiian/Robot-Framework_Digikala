*** Settings ***
Library  SeleniumLibrary
Resource  PageObjects/Main.robot
Resource  Cart.robot

*** Variables ***
${page_contain}  سبد خرید شما خالی است

*** Keywords ***
Go To Cart
    Click To Card Button

Assrtions
    Page Should Contain  ${page_contain}
