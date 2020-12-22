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
    [Tags]    homepage
    HomepageApp.Clicking on Partners Dashboard form About Us section on footer

Users should be able to navigate to Partners My Family page from footer
    [Documentation]
    [Tags]    homepage
    HomepageApp.Clicking on Partners My Family form About Us section on footer

Users should be able to navigate to Spread The Word page from footer
    [Documentation]
    [Tags]    homepage
    HomepageApp.Clicking on Spread The Word from Resources section on footer

Users should be able to navigate to Support Center page from footer
    [Documentation]
    [Tags]    homepage
    HomepageApp.Clicking on Support Center from Resources section on footer

Users should be able to navigate to FAQ page from footer
    [Documentation]
    [Tags]    homepage
    HomepageApp.Clicking on FAQ from Resources section on footer

Users should be able to navigate to Contact Us page from footer
    [Documentation]
    [Tags]    homepage
    HomepagePO.Clicking on Contact Us from the Connect section on footer and verifying the content

Users should be able to navigate to Facebook page from footer
    [Documentation]
    [Tags]    homepage
    HomepageApp.Clicking on Facebook from Connect section on footer

Users should be able to navigate to Twitter page from footer
    [Documentation]
    [Tags]    homepage
    HomepageApp.Clicking on Twitter from Connect section on footer

Users should be able to navigate to Instagram page from footer
    [Documentation]
    [Tags]    homepage
    HomepageApp.Clicking on Instagram from Connect section on footer