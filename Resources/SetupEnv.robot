*** Settings ***
Library    SeleniumLibrary
Documentation    This file will include all the required set up components for the test suites



*** Variables ***
${PROD}             https://www.beta.ballooningnesteggs.com/
${BROWSER}          chrome
${X}                1400
${Y}                800





*** Keywords ***
Begining the test
    Open Browser        ${PROD}     ${BROWSER}
    set window size     ${X}        ${Y}
    sleep   5s

Ending the tests by closing the browser
    Close All Browsers