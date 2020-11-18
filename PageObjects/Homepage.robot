*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${PAGE_TITLE}                               Ballooning Nest Eggs
${SIGN_UP}                                  //a[@href="https://www.beta.ballooningnesteggs.com/register"]


*** Keywords ***
Verifying the page title
    title should be                         ${PAGE_TITLE}

Clicking on Sign Up button
    go to                                 https://www.beta.ballooningnesteggs.com/register
#    Click Element                         ${SIGN_UP}