*** Settings ***
Library    SeleniumLibrary
Documentation    This file will include all the required set up components for the test suites



*** Variables ***
${PROD}             https://www.beta.ballooningnesteggs.com/
${BROWSER}          chrome






*** Keywords ***
Begining the test
    Open Browser       about:blank     ${BROWSER}
    go to              ${PROD}
    maximize browser window
    sleep   5s

Ending the tests by closing the browser
    Close All Browsers