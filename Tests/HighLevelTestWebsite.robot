*** Settings ***
Documentation       This is a basic test
Library             Selenium2Library


*** Variables ***
${URL}      https://robotsparebinindustries.com
${BROWSER}      Chrome


*** Test Cases ***
User login with valid credentials
    User Open Browser To Login Page
    User Maximize the Browser
    User Enter the Username     maria
    User Enter the Password     thoushallnotpass
    User Submit Credentials

User will submit his sales with valid params
    Wait for the Submit Sales Page
    User Input First Name       O Libras
    User Input Last Name        Rei do Macbook
    User Input Sales Result        6000
    User Submit the Sales


*** Keywords ***
User Open Browser To Login Page
    Open Browser        ${URL}   browser=${BROWSER}

User Maximize the Browser
    Maximize Browser Window

User Enter the Username
    [Arguments]     ${USERNAME}
    Input Text      username    ${USERNAME}

User Enter the Password
    [Arguments]     ${PASSWORD}
    Input Text      password    ${PASSWORD}

User Submit Credentials
    Click button    Log in

Wait for the Submit Sales Page
    Wait until page contains    First name

User Input First Name
    [Arguments]     ${NAME}
    Input text      firstname   ${NAME}

User Input Last Name
    [Arguments]     ${LAST NAME}
    Input text      lastname   ${LAST NAME}

User Input Sales Result
    [Arguments]     ${AMOUNT}
    Input text      salesresult     ${AMOUNT}

User Submit the Sales
    Click Button    Submit
    Sleep       3s
    [Teardown]  Close Browser
