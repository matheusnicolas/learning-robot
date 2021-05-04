*** Settings ***
Documentation       This is a basic test
Library             Selenium2Library


*** Variables ***
${URL}      https://www.airbnb.com.br
${BROWSER}      Chrome

*** Test Cases ***
User can login in the website
    User will open the browser
    User will maximize screen
    User will wait until the phrase
    User will close the browser

*** Keywords ***
User will open the browser
    Open Browser        ${URL}   browser=${BROWSER}

User will maximize screen
    Maximize Browser Window

User will wait until the phrase
    Wait until page contains        O melhor da natureza

User will close the browser
    Close browser