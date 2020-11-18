*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/SetupEnv.robot
Resource    ../Apps/Homepage.robot




Test Setup          Begining the test
Test Teardown       Ending the tests by closing the browser


*** Test Cases ***
Users should be able to navigate to BallooningNestEggs website
    [Documentation]
    [Tags]    homepage
    Homepage.Verifying the balloningnesteggs page title
