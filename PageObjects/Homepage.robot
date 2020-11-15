*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${PAGE_TITLE}                           Ballooning Nest Eggs



*** Keywords ***
Verifying the page title
    title should be                         ${PAGE_TITLE}