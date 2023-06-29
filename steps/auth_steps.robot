*** Settings ***
Documentation  Login Functionality
Variables  ./pages/login_page.py
Variables  ./pages/main_page.py
Variables  ./config.py
Library  ./lib/ExtendedSeleniumLibrary.py

*** Keywords ***

Open Homepage
    Open Browser  ${BASE_URL}  ${BROWSER}
    Wait Until Element Is Visible  ${login_field}
    Input Text  ${login_field}  ${CREDENTIALS.login}
    Wait Until Element Is Visible  ${password_field}
    Input Password  ${password_field}  ${CREDENTIALS.password}
    Wait Until Element Is Visible  ${submit_btn}
    Click Element  ${submit_btn}