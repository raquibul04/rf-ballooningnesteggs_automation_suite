*** Settings ***
Library    SeleniumLibrary
Resource    ../PageObjects/Homepage.robot
Resource    ../PageObjects/Register.robot

*** Keywords ***
User inputs his/her information in order to create an account
    sleep     3s
    Homepage.Clicking on Sign Up button
    sleep    3s
    Register.Clicking on Create Account button
    sleep    3s
    Register.Inputting user's first name
    sleep    3s
    Register.Inputting user's last name
    sleep    3s
    Register.Inputting user's email
    sleep    3s
    Register.Inputting user's password
    sleep    3s
    Register.Confirming users password