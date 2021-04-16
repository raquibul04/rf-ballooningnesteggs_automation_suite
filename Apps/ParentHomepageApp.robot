*** Settings ***
Library    SeleniumLibrary
Resource   ../Apps/LoginApp.robot
Resource    ../PageObjects/ParentHomepagePO.robot



*** Keywords ***
Parent user navigates to the Family tab from the header section on homepage
    LoginApp.User inputs his/her information as a parent in order to login to BNE
    sleep    2s
    ParentHomepagePO.Clicking on Family tab on the top navigation

Parent users navigates to the connections page by clicking on the Add connections icon
    LoginApp.User inputs his/her information as a parent in order to login to BNE
    sleep    2s
    ParentHomepagePO.Clicking on Add connection icon from See What Everyone’s Up To label

Prent users navigates to the gifts page by clicking on the gift icon under notifications
    LoginApp.User inputs his/her information as a parent in order to login to BNE
    sleep    2s
    ParentHomepagePO.Clicking on the gift icon in order to navigate to the gift page

Parent user navigates to one of the event pages from the homepage
    LoginApp.User inputs his/her information as a parent in order to login to BNE
    sleep    2s
    ParentHomepagePO.Clicking on an event from the homepage

Parent user selects a child for the event card
    LoginApp.User inputs his/her information as a parent in order to login to BNE
    sleep    2s
    ParentHomepagePO.Selecting a child for an event card

Parent user navigate to the Edit Family page
    LoginApp.User inputs his/her information as a parent in order to login to BNE
    sleep    2s
    ParentHomepagePO.Clicking on Family tab on the top navigation
    ParentHomepagePO.Clicking on Edit Profile button

Parent user checks the content under MY Updates tab the from Family tab
    LoginApp.User inputs his/her information as a parent in order to login to BNE
    sleep    2s
    ParentHomepagePO.Clicking on Family tab on the top navigation
    ParentHomepagePO.Clicking and verifying My Updates tab

Parent user navigates to the Gifts tab from the Family tab
    LoginApp.User inputs his/her information as a parent in order to login to BNE
    sleep    2s
    ParentHomepagePO.Clicking on Family tab on the top navigation
    ParentHomepagePO.Clicking on Gifts tab

Parent user navigates to the Events tab from the Family tab
    LoginApp.User inputs his/her information as a parent in order to login to BNE
    sleep    2s
    ParentHomepagePO.Clicking on Family tab on the top navigation
    ParentHomepagePO.Clicking on Events tab

Parent user navigates to the Cards tab from the Family tab
    LoginApp.User inputs his/her information as a parent in order to login to BNE
    sleep    2s
    ParentHomepagePO.Clicking on Family tab on the top navigation
    ParentHomepagePO.Clicking on Cards tab