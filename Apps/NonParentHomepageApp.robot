*** Settings ***
Library    SeleniumLibrary
Resource   ../Apps/LoginApp.robot
Resource    ../PageObjects/NonParentHomepagePO.robot



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