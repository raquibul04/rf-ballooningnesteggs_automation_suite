*** Settings ***
Library    SeleniumLibrary
Resource    ../PageObjects/HomepagePO.robot
Resource    ../PageObjects/RegisterPO.robot

*** Keywords ***
User inputs his/her information in order to create an account
    sleep     3s
    HomepagePO.Clicking on Sign Up button
    sleep    3s
    RegisterPO.Clicking on Create Account button
    sleep    3s
    RegisterPO.Inputting user's first name
    sleep    3s
    RegisterPO.Inputting user's last name
    sleep    3s
    RegisterPO.Inputting user's email
    sleep    3s
    RegisterPO.Inputting user's password
    sleep    3s
    RegisterPO.Confirming users password
    sleep    3s
    RegisterPO.Clicking on 'Yes' button
    sleep    3s
    RegisterPO.Verifying account accpetance on the Register page