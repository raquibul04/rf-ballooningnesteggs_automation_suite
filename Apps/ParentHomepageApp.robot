*** Settings ***
Library    SeleniumLibrary
Resource   ../Apps/LoginApp.robot
Resource    ../PageObjects/ParentHomepagePO.robot



*** Keywords ***
Parent user navigates to the Family tab from the header section on homepage
    LoginApp.User inputs his/her information as a parent in order to login to BNE
    sleep    2s
    ParentHomepagePO.Clicking on Family tab on the top navigation