*** Settings ***
Documentation  Filter Keywords
Library  SeleniumLibrary

Resource  ../Variables.robot
Resource  ../CommonFunctionality.robot
Resource  ../WebElements.robot


*** Keywords ***
Add Filter
    [Arguments]  ${filter_name}
    Wait Until Page Contains Element  ${filter_name}
    Scroll To Element  ${filter_name}
    Wait Until Element Is Visible  ${filter_name}
    JavaScript Click Element  ${filter_name}

Add Filters
    [Arguments]  @{filters}
    FOR  ${filter_name}  IN  @{filters}
    Add Filter  ${filters_section}//*[text()="${filter_name}"]
    END
