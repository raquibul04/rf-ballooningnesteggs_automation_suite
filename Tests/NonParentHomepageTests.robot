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

Ensure that non parent users should be able to update their profile
    [Documentation]
    [Tags]  update
    NonParentHomepageApp.Non-parent user updates his/her profile

Ensure that non parent user can toggle between gifts and cards tab under tracking tab
    [Documentation]
    [Tags]  update
    NonParentHomepageApp.Non-parent user toggles between Gifts and Cards tabs under tracking tab

Ensure that non parent user can toggle amoung Connections, Contacts and Search tabs under Connections tab
    [Documentation]
    [Tags]  update
    NonParentHomepageApp.Non-parent user toggles among Connections, Contacts and Search tabs under Connections tab

Ensure that non parent user can navigate to the spread the word page
    [Documentation]
    [Tags]  update1
    NonParentHomepageApp.Non-parent user navigates to the Spread the word page

Ensure that non parent user can navigate to the Notifications page
    [Documentation]
    [Tags]  update1
    NonParentHomepageApp.Non-parent user navigates to the Notifications page

Ensure that non parent user should not be able to update his/her profile by leaving the firstname field empty
    [Documentation]
    [Tags]  update123
    NonParentHomepageApp.Non-parent user tries to update his/her profile by leaving Firstname field blank

Ensure that non parent user should not be able to update his/her profile by leaving the lastname field empty
    [Documentation]
    [Tags]  update123
    NonParentHomepageApp.Non-parent user tries to update his/her profile by leaving Lastname field blank

Ensure that non parent user should not be able to update his/her profile by leaving the City field empty
    [Documentation]
    [Tags]  update123
    NonParentHomepageApp.Non-parent user tries to update his/her profile by leaving City field blank

Ensure that non parent user should not be able to update his/her profile by leaving the Zip code field empty
    [Documentation]
    [Tags]  update123
    NonParentHomepageApp.Non-parent user tries to update his/her profile by leaving Zip code field blank


