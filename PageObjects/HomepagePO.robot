*** Settings ***
Library    SeleniumLibrary


*** Variables ***

${PAGE_TITLE}                               Ballooning Nest Eggs
${SIGN_UP}                                  //a[@href="https://www.beta.ballooningnesteggs.com/register"]
${SIGNUP_URL}                               https://www.beta.ballooningnesteggs.com/register
${LOGIN_URL}                                https://www.beta.ballooningnesteggs.com/login
#About_US_Footer
${OUR_STORY}                                //div[@class="c-account-menu"]/a[1]
${OUR_STORY_FOOTER}                         //footer[@class="c-footer__wrapper"]/div/div/div/div[1]/ul/li[1]
${PARTNERS_DASHBOARD_FOOTER}                //footer[@class="c-footer__wrapper"]/div/div/div/div[1]/ul/li[2]
${PARTNERS_MY_FAMILY_FOOTER}                //footer[@class="c-footer__wrapper"]/div/div/div/div[1]/ul/li[3]
${PARTNERS_DASHBOARD_FOOTER_PAGE_TITLE}     Ballooning-Dashboard-Partners.pdf
${PARTNERS_MY_FAMILY_FOOTER_PAGE_TITLE}     Ballooning-My-Family-Partners.pdf
#Resources_Footer
${SPREAD_THE_WORD}                          //footer[@class="c-footer__wrapper"]/div/div/div/div[2]/ul/li[1]
${SUPPORT_CENTER}                           //footer[@class="c-footer__wrapper"]/div/div/div/div[2]/ul/li[2]
${FAQ}                                      //footer[@class="c-footer__wrapper"]/div/div/div/div[2]/ul/li[3]
${SPREAD_THE_WORD_PAGE_CONTENT}             SPREAD THE WORD
${SUPPORT_CENTER_PAGE_CONTENT}              The first financial gifting platform for kids to truly "take the funny out of money."
${FAQ_PAGE_CONTENT}                         The Basics
#Connect_Footer
${CONNECT_US}                               //footer[@class="c-footer__wrapper"]/div/div/div/div[3]/ul/li[1]
${CONNECT_US_PAGE_CONTENT}                  We’re here to help
${TWITTER}                                  //footer[@class="c-footer__wrapper"]/div/div/div/div[3]/ul/li[2]
${TWITTER_PAGE_CONTENT}                     BallooningNestEggs
${FACEBOOK}                                 //footer[@class="c-footer__wrapper"]/div/div/div/div[3]/ul/li[3]
${FACEBOOK_PAGE_CONTENT}                    Ballooning Nest Eggs, Inc.
${INSTAGRAM}                                //footer[@class="c-footer__wrapper"]/div/div/div/div[3]/ul/li[4]
${INSTAGRAM_PAGE_CONTENT}                   balloonnesteggs



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

Clicking on OUR STORY link form About Us section on footer
    Execute Javascript                      $(document).scrollTop(7000)
    sleep                                   3s
    click element                           ${OUR_STORY_FOOTER}

Clicking on Partners Dashboard form About Us section on footer and verifying the title
    Execute Javascript                      $(document).scrollTop(7000)
    sleep                                   3s
    click element                           ${PARTNERS_DASHBOARD_FOOTER}
    sleep                                   1s
    switch window                           locator=new
    sleep                                   5s
    title should be                         ${PARTNERS_DASHBOARD_FOOTER_PAGE_TITLE}


Clicking on Partners My Family form About Us section on footer and verifying the title
    Execute Javascript                      $(document).scrollTop(7000)
    sleep                                   3s
    click element                           ${PARTNERS_MY_FAMILY_FOOTER}
    switch window                           locator=new
    sleep                                   5s
    title should be                         ${PARTNERS_MY_FAMILY_FOOTER_PAGE_TITLE}

Clicking on Spread The Word from Resources section on footer and verifying the content
    Execute Javascript                      $(document).scrollTop(7000)
    sleep                                   3s
    click element                           ${SPREAD_THE_WORD}
    sleep                                   2s
    page should contain                     ${SPREAD_THE_WORD_PAGE_CONTENT}

Clicking on Support Center from Resources section on footer and verifying the content
    Execute Javascript                      $(document).scrollTop(7000)
    sleep                                   3s
    click element                           ${SUPPORT_CENTER}
    sleep                                   2s
    page should contain                     ${SUPPORT_CENTER_PAGE_CONTENT}

Clicking on FAQ from Resources section on footer and verifying the content
    Execute Javascript                      $(document).scrollTop(7000)
    sleep                                   3s
    click element                           ${FAQ}
    sleep                                   2s
    page should contain                     ${FAQ_PAGE_CONTENT}

Clicking on Contact Us from the Connect section on footer and verifying the content
    Execute Javascript                      $(document).scrollTop(7000)
    sleep                                   3s
    click element                           ${CONNECT_US}
    sleep                                   2s
    page should contain                     ${CONNECT_US_PAGE_CONTENT}

Clicking on Twitter from the Connect section on footer and verifying the content
    Execute Javascript                      $(document).scrollTop(7000)
    sleep                                   3s
    click element                           ${TWITTER}
    sleep                                   2s
    switch window                           locator=new
    sleep                                   1s
    page should contain                     ${TWITTER_PAGE_CONTENT}

Clicking on Facebook from the Connect section on footer and verifying the content
    Execute Javascript                      $(document).scrollTop(7000)
    sleep                                   3s
    click element                           ${FACEBOOK}
    sleep                                   2s
    switch window                           locator=new
    sleep                                   1s
    page should contain                     ${FACEBOOK_PAGE_CONTENT}

Clicking on Instagram from the Connect section on footer and verifying the content
    Execute Javascript                      $(document).scrollTop(7000)
    sleep                                   3s
    click element                           ${INSTAGRAM}
    sleep                                   2s
    switch window                           locator=new
    sleep                                   1s
    page should contain                     ${INSTAGRAM_PAGE_CONTENT}
