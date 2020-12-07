*** Settings ***
Library    SeleniumLibrary
Resource    ../PageObjects/HomepagePO.robot


*** Keywords ***
Verifying the balloningnesteggs page title
    HomepagePO.Verifying the page title

Clicking on Our Story link from the top navigation
    HomepagePO.Clicking on OUR STORY from top navigation
    sleep    1s
    HomepagePO.Verifying text on our story page

Clicking on Our Story link from footer
    HomepagePO.Clicking on OUR STORY link form About Us sction on footer
    sleep    5s
    HomepagePO.Verifying text on our story page

Clicking on Partners Dashboard form About Us sction on footer
    HomepagePO.Clicking on Partners Dashboard form About Us sction on footer and verifying the title

Clicking on Partners My Family form About Us sction on footer
    HomepagePO.Clicking on Partners My Family form About Us sction on footer and verifying the title
