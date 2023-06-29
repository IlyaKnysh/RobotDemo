*** Settings ***
Documentation  Dashboard Functionality
Variables  ./pages/main_page.py
Variables  ./pages/admin_page.py
Variables  ./config.py
Library  ./lib/ExtendedSeleniumLibrary.py
Library  ./lib/Helpers.py
Resource  ./steps/auth_steps.robot
Test Setup  Open Homepage
Test Teardown   Close All Browsers

*** Variables ***
${search_input}  Admin

*** Test Cases ***
Verify Search Feature
    [documentation]  This test case verifies that user is able to use search in a leftside bar
    [tags]  Smoke
    Wait Until Element Is Visible  ${search_box}
    Input Text  ${search_box}  ${search_input}
    Wait Until Element Is Visible  ${leftsidebar_options}
    ${options}=  Get WebElements  ${leftsidebar_options}
    FOR  ${element}  IN  @{options}
        Element Should Contain  ${element}  ${search_input}
    END
    ${locator}=  Replace variables  ${leftsidebar_option}
    Do Regular Selenium Click  ${locator}
    Wait Until Element Is Visible  ${page_label}
    Element Should Contain    ${page_label}    ${search_input}

*** Keywords ***