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

Ensure that non parent users should be able to navigate to their profile page
    [Documentation]
    [Tags]  non-parent
    NonParentHomepageApp.Non-parent user navigates to his/her profile page from the profile overlay

Ensure the non parent users should be able to navigate to the connect to the paypal page
    [Documentation]
    [Tags]  non-parent
    NonParentHomepageApp.Non-parent users navigates to the Connect to the Paypal from the profile overlay

Ensure that non parent users should be able to navigate to the settings page
    [Documentation]
    [Tags]  non-parent1
    NonParentHomepageApp.Non-parent user navigates to the setting page from the profile pverlay

Ensure that non parent users should be able to log out from their account
    [Documentation]
    [Tags]  non-parent
    NonParentHomepageApp.Non-parent user logs out from his/her BNE account