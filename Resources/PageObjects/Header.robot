*** Settings ***
Documentation
Library  SeleniumLibrary
Resource  ../Variables.robot
Resource  ../WebElements.robot


*** Variables ***
${main_category_button}  ${main_categories}//*[contains(text(), "${main_category}")]
${sub_category_button}  ${sub_categories}//*[contains(text(), "${sub_category}")]


*** Keywords ***
Add Text To Search Input And Enter
    [Arguments]  ${search_text}
    Input Text  ${search_input}  ${search_text}
    Press Keys  ${search_input}  ENTER

Click To Categories Button
    Wait Until Page Contains Element  ${categories_button}
    Click Element  ${categories_button}

Select Main Category
    [Arguments]  ${main_category}
    Click To Categories Button
    Click Element  ${main_category_button}

Select Sub Category
    [Arguments]  ${main_category}  ${sub_category}
    Click To Categories Button
    Mouse Over  ${main_category_button}
    Click Element  ${sub_category_button}

Click To Login Button
    Wait Until Page Contains Element  ${login_button}
    Click Link  ${login_button}

Click To Card Button
    Press Keys  ${cart_button}  RETURN
    Invisible Element  ${cart_button_popup}
