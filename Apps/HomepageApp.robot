*** Settings ***
Library    SeleniumLibrary
Resource    ../PageObjects/HomepagePO.robot


*** Keywords ***
Verifying the balloningnesteggs page title
    HomepagePO.Verifying the page title

Clicking on Our Story link for the top navigation
    HomepagePO.Clicking on OUR STORY from top navigation
    sleep    1s
    HomepagePO.Verifying text on our story page