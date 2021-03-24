*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/SetupEnv.robot
Resource    ../Apps/LoginApp.robot


Test Setup          Begining the test
Test Teardown       Ending the tests by closing the browser


*** Test Cases ***
Users should be able to login to the BNE using valid username and password
    [Documentation]
    [Tags]  login
    LoginApp.User inputs his/her information in order to login to BNE

Users should be able to login as a parent to the BNE using valid username and password
    [Documentation]
    [Tags]  login
    LoginApp.User inputs his/her information as a parent in order to login to BNE