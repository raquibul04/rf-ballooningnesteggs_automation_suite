*** Settings ***
Library    SeleniumLibrary
Resource    ../PageObjects/HomepagePO.robot
Resource    ../PageObjects/LoginPO.robot


*** Keywords ***
User inputs his/her information in order to login to BNE
    HomepagePO.Clicking on Log in button
    LoginPO.Inputting user's email on the email field
    LoginPO.Inputting user's password on the password field
    LoginPO.Clicking on signin button
    HomepagePO.Verifying the page title

User inputs his/her information as a parent in order to login to BNE
    HomepagePO.Clicking on Log in button
    LoginPO.Inputting user's email on the email field for a parent account
    LoginPO.Inputting user's password on the password field for a parent account
    LoginPO.Clicking on signin button
    HomepagePO.Verifying the page title