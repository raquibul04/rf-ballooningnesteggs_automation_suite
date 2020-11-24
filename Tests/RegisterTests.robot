*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/SetupEnv.robot
Resource    ../Apps/RegisterApp.robot




Test Setup          Begining the test
Test Teardown       Ending the tests by closing the browser


*** Test Cases ***
Users should be able to create an account on BallooningNestEggs applicaiton
    [Documentation]
    [Tags]    register
    RegisterApp.User inputs his/her information in order to create an account