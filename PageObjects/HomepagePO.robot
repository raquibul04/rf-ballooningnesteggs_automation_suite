*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${PAGE_TITLE}                               Ballooning Nest Eggs
${SIGN_UP}                                  //a[@href="https://www.beta.ballooningnesteggs.com/register"]
${SIGNUP_URL}                               https://www.beta.ballooningnesteggs.com/register
${LOGIN_URL}                                https://www.beta.ballooningnesteggs.com/login
${OUR_STORY}                                //div[@class="c-account-menu"]/a[1]

*** Keywords ***
Verifying the page title
    title should be                         ${PAGE_TITLE}

Clicking on Sign Up button
    go to                                   https://www.beta.ballooningnesteggs.com/register
#    Click Element                          ${SIGN_UP}

Clicking on Log in button
    go to                                   https://www.beta.ballooningnesteggs.com/login
    sleep           3s

Clicking on OUR STORY from top navigation
    click element                           ${OUR_STORY}

Verifying text on our story page
    page should contain                      Our Story