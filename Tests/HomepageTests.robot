*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/SetupEnv.robot
Resource    ../Apps/HomepageApp.robot




Test Setup          Begining the test
Test Teardown       Ending the tests by closing the browser


*** Test Cases ***
Users should be able to navigate to BallooningNestEggs website
    [Documentation]
    [Tags]    homepage
    HomepageApp.Verifying the balloningnesteggs page title

Users should be able to navigate to Our Story page
    [Documentation]
    [Tags]    homepage1
    HomepageApp.Clicking on Our Story link for the top navigation