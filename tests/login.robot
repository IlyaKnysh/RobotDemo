*** Settings ***
Documentation  Login Functionality
Variables  ./pages/login_page.py
Variables  ./pages/main_page.py
Variables  ./config.py
Library  ./lib/ExtendedSeleniumLibrary.py
Library  ./lib/Helpers.py
Test Setup  Open Browser  ${BASE_URL}  ${BROWSER}
Test Teardown   Close All Browsers

*** Variables ***

*** Test Cases ***
Verify Successful Login to OrangeHRM
    [documentation]  This test case verifies that user is able to successfully Login to OrangeHRM
    [tags]  Smoke
    Wait Until Element Is Visible  ${login_field}
    Input Text  ${login_field}  ${CREDENTIALS.login}
    Input Password  ${password_field}  ${CREDENTIALS.password}
    Click Element  ${submit_btn}
    Wait For Element Exist  ${page_label}
    Element Should Contain  ${page_label}  Dashboard


*** Keywords ***