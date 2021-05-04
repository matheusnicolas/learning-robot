*** Settings ***
Documentation       This is a basic test
Library             Selenium2Library


*** Variables ***
${URL}      https://www.airbnb.com.br
${BROWSER}      Chrome
${USERNAME}     maria
${PASSWORD}     thoushallnotpass
*** Test Cases ***
User can open home page
    [Documentation]         As a user I can open the home page and see the tagline

    Open Browser                    ${URL}   browser=${BROWSER}
    Maximize Browser Window
    wait until page contains        O melhor da natureza
    close browser


*** Keywords ***