*** Settings ***
Library    SeleniumLibrary
Resource   ../Apps/LoginApp.robot
Resource    ../PageObjects/NonParentHomepagePO.robot
Resource    ../PageObjects/UpdatingProfilePO.robot


*** Keywords ***
Non-parent user navigates to the TRACKING tab from the header section on homepage
    LoginApp.User inputs his/her information in order to login to BNE
    sleep    2s
    NonParentHomepagePO.Clicking on TRACKING link from the header

Non-parent user navigates to the CONNECTIONS tab from the header section on homepage
    LoginApp.User inputs his/her information in order to login to BNE
    sleep    2s
    NonParentHomepagePO.Clicking on CONNECTIONS link from the header

Non-parent user navigates to the EVENTS tab from the header section on homepage
    LoginApp.User inputs his/her information in order to login to BNE
    sleep    2s
    NonParentHomepagePO.Clicking on EVENTS link from the header

Non-parent user navigates to the ECARDS tab from the header section on homepage
    LoginApp.User inputs his/her information in order to login to BNE
    sleep    2s
    NonParentHomepagePO.Clicking on ECARDS link from the header

Non-parent user navigates to the GIVE A GIFT tab from the header section on homepage
    LoginApp.User inputs his/her information in order to login to BNE
    sleep    2s
    NonParentHomepagePO.Clicking on GIVE A GIFT link from the header

Non-parent user navigates to his/her profile page from the profile overlay
    LoginApp.User inputs his/her information in order to login to BNE
    sleep    2s
    NonParentHomepagePO.Clicking on My Profile from Profile Overlay

Non-parent users navigates to the Connect to the Paypal from the profile overlay
    LoginApp.User inputs his/her information in order to login to BNE
    sleep    2s
    NonParentHomepagePO.Clicking on Connect to Paypal from Profile Overlay

Non-parent user navigates to the setting page from the profile pverlay
    LoginApp.User inputs his/her information in order to login to BNE
    sleep    2s
    NonParentHomepagePO.Clicking on settings from Profile Overlay

Non-parent user logs out from his/her BNE account
    LoginApp.User inputs his/her information in order to login to BNE
    sleep    2s
    NonParentHomepagePO.Clicking on Log out from Profile Overlay

Non-parent user updates his/her profile
    LoginApp.User inputs his/her information in order to login to BNE
    sleep    2s
    NonParentHomepagePO.Clicking on My Profile from Profile Overlay
    sleep    1s
    UpdatingProfilePO.Updating first name
    sleep    1s
    UpdatingProfilePO.Updating last name
    sleep    1s
    UpdatingProfilePO.Updaing birth year
    sleep    1s
    UpdatingProfilePO.Updaing birth month
    sleep    1s
    UpdatingProfilePO.Updaing birth date
    sleep    1s
    UpdatingProfilePO.Updating cell phone number
    sleep    1s
    UpdatingProfilePO.Updating city
    sleep    1s
    UpdatingProfilePO.Updating state
    sleep    1s
    UpdatingProfilePO.Updating zip code
    sleep    1s
    UpdatingProfilePO.Saving the updated information

Non-parent user toggles between Gifts and Cards tabs under tracking tab
    LoginApp.User inputs his/her information in order to login to BNE
    sleep    2s
    NonParentHomepagePO.Clicking on TRACKING link from the header
    sleep    1s
    NonParentHomepagePO.Clicking on CARDS under Tracking tab
    NonParentHomepagePO.Clicking on GIFTS under Tracking tab

Non-parent user toggles among Connections, Contacts and Search tabs under Connections tab
    LoginApp.User inputs his/her information in order to login to BNE
    sleep    2s
    NonParentHomepagePO.Clicking on CONNECTIONS link from the header
    sleep   1s
    NonParentHomepagePO.Clicking on Contacts under Connections tab
    NonParentHomepagePO.Clicking on Search under Connections tab
    NonParentHomepagePO.Clicking on Connections under Connections tab

Non-parent user navigates to the Spread the word page
    LoginApp.User inputs his/her information in order to login to BNE
    sleep    2s
    NonParentHomepagePO.Clicking on Spread the word link

Non-parent user navigates to the Notifications page
    LoginApp.User inputs his/her information in order to login to BNE
    sleep    2s
    NonParentHomepagePO.Clicking on Notifications link