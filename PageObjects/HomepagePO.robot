*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${PAGE_TITLE}                               Ballooning Nest Eggs
${SIGN_UP}                                  //a[@href="https://www.beta.ballooningnesteggs.com/register"]
${SIGNUP_URL}                               https://www.beta.ballooningnesteggs.com/register
${LOGIN_URL}                                https://www.beta.ballooningnesteggs.com/login
${OUR_STORY}                                //div[@class="c-account-menu"]/a[1]
${OUR_STORY_FOOTER}                         //footer[@class="c-footer__wrapper"]/div/div/div/div[1]/ul/li[1]
${PARTNERS_DASHBOARD_FOOTER}                //footer[@class="c-footer__wrapper"]/div/div/div/div[1]/ul/li[2]
${PARTNERS_MY_FAMILY_FOOTER}                //footer[@class="c-footer__wrapper"]/div/div/div/div[1]/ul/li[3]
${PARTNERS_DASHBOARD_FOOTER_PAGE_TITLE}     Ballooning-Dashboard-Partners.pdf
${PARTNERS_MY_FAMILY_FOOTER_PAGE_TITLE}     Ballooning-My-Family-Partners.pdf




*** Keywords ***
Verifying the page title
    title should be                         ${PAGE_TITLE}

Clicking on Sign Up button
    go to                                   https://www.beta.ballooningnesteggs.com/register
#    Click Element                          ${SIGN_UP}       #Getting an error saying element is not interactable, probably an issue with the webdriver

Clicking on Log in button
    go to                                   https://www.beta.ballooningnesteggs.com/login
    sleep           3s

Clicking on OUR STORY from top navigation
    click element                           ${OUR_STORY}

Verifying text on our story page
    page should contain                      Our Story

Clicking on OUR STORY link form About Us sction on footer
    Execute Javascript                      $(document).scrollTop(7000)
    sleep                                   3s
    click element                           ${OUR_STORY_FOOTER}

Clicking on Partners Dashboard form About Us sction on footer and verifying the title
    Execute Javascript                      $(document).scrollTop(7000)
    sleep                                   3s
    click element                           ${PARTNERS_DASHBOARD_FOOTER}
    sleep                                   1s
    switch window                           locator=new
    sleep                                   5s
    title should be                         ${PARTNERS_DASHBOARD_FOOTER_PAGE_TITLE}


Clicking on Partners My Family form About Us sction on footer and verifying the title
    Execute Javascript                      $(document).scrollTop(7000)
    sleep                                   3s
    click element                           ${PARTNERS_MY_FAMILY_FOOTER}
    switch window                           locator=new
    sleep                                   5s
    title should be                         ${PARTNERS_MY_FAMILY_FOOTER_PAGE_TITLE}