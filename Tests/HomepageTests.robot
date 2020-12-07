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
    [Tags]    homepage
    HomepageApp.Clicking on Our Story link from the top navigation

Users should be able to navigate to Our Story page
    [Documentation]
    [Tags]    homepage
    HomepageApp.Clicking on Our Story link from footer

Users should be able to navigate to Partners Dashboard page from footer
    [Documentation]
    [Tags]    homepage1
    HomepageApp.Clicking on Partners Dashboard form About Us sction on footer

Users should be able to navigate to Partners My Family page from footer
    [Documentation]
    [Tags]    homepage
    HomepageApp.Clicking on Partners My Family form About Us sction on footer