*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/SetupEnv.robot
Resource    ../Apps/NonParentHomepageApp.robot


Test Setup          Begining the test
Test Teardown       Ending the tests by closing the browser


*** Test Cases ***
Ensure that non parent users should be able to navigate to the Tracking link from the header
    [Documentation]
    [Tags]  non-parent
    NonParentHomepageApp.Non-parent user navigates to the TRACKING tab from the header section on homepage

Ensure that non parent users should be able to navigate to the Connections link from the header
    [Documentation]
    [Tags]  non-parent
    NonParentHomepageApp.Non-parent user navigates to the CONNECTIONS tab from the header section on homepage

Ensure that non parent users should be able to navigate to the Events link from the header
    [Documentation]
    [Tags]  non-parent
    Non-parent user navigates to the EVENTS tab from the header section on homepage

Ensure that non parent users should be able to navigate to the Ecards link from the header
    [Documentation]
    [Tags]  non-parent
    NonParentHomepageApp.Non-parent user navigates to the ECARDS tab from the header section on homepage

Ensure that non parent users should be able to navigate to the Give A Gift link from the header
    [Documentation]
    [Tags]  non-parent
    NonParentHomepageApp.Non-parent user navigates to the GIVE A GIFT tab from the header section on homepage