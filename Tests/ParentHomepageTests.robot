*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/SetupEnv.robot
Resource    ../Apps/ParentHomepageApp.robot


Test Setup          Begining the test
Test Teardown       Ending the tests by closing the browser


*** Test Cases ***
Ensure that non parent users should be able to navigate to the Tracking link from the header
    [Documentation]
    [Tags]  non-parent
    ParentHomepageApp.Parent user navigates to the Family tab from the header section on homepage