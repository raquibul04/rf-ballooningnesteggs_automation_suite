*** Settings ***
Library    SeleniumLibrary



*** Variables ***
${TRACKING_HEADER}                              //nav[@class="c-nav"]/ul/li[1]/a
${CONNECTIONS_HEADER}                           //nav[@class="c-nav"]/ul/li[2]/a
${EVENTS_HEADER}                                //nav[@class="c-nav"]/ul/li[3]/a
${ECARDS_HEADER}                                //nav[@class="c-nav"]/ul/li[4]/a
${GIVE_A_GIFT_HEADER}                           //nav[@class="c-nav"]/ul/li[5]/a

${TRACKING_VERIFYING_TEXT}                      Gifts Sent
${CONNECTION_VERIFYING_TEXT}                    My Network
${EVENTS_VERIFYING_TEXT}                        UPCOMING
${ECARDS_VERIFYING_TEXT}                        Send a Card
${GIVE_A_GIFT_VERIFYING_TEXT}                   Give a Gift

${ACCOUNT_NAME}                                 //a[@id="main-menu-user-dropdown-trigger"]
${MY_PROFILE}                                   //ul[@id="main-menu-user-dropdown"]/li[1]/a
${CONNECT_TO_PAYPAL}                            //ul[@id="main-menu-user-dropdown"]/li[2]/a
${SETTINGS}                                     //ul[@id="main-menu-user-dropdown"]/li[3]/a
${LOG_OUT}                                      //ul[@id="main-menu-user-dropdown"]/li[4]/a

${MY_PROFILE_VERIFYING_TEXT}                    Edit Profile
${CONNECT_TO_PAYPAL_VERIFYING_TEXT}             Start accepting gifts
${SETTINGS_VERIFYING_TEXT}                      On Ballooning Nest Eggs
${LOG_OUT_VERIFYING_TEXT}                       The first financial gifting platform for kids to truly "take the funny out of money."

${TRACKING_GIFT_BUTTON}                         //a[@data-url="https://www.beta.ballooningnesteggs.com/get-my-profile-gifts"]
${TRACKING_CARDS_BUTTON}                        //a[@data-url="https://www.beta.ballooningnesteggs.com/get-my-profile-cards"]
${TRACKING_GIFT_BUTTON_VERIFYING_TEXT}          Gifts Sent
${TRACKING_CARDS_BUTTON_VERIFYING_TEXT}         Cards Received (0)

${CONNECTIONS_LIST}                             //div[@class='c-tabs']//a[@href="https://www.beta.ballooningnesteggs.com/family/connections"]
${CONTACT_LIST}                                 //div[@class='c-tabs']//a[@href="https://www.beta.ballooningnesteggs.com/contacts"]
${SEARCH_TAB_CONNECTIONS}                       //div[@class='c-tabs']//a[@href="https://www.beta.ballooningnesteggs.com/search"]

${CONNECTIONS_LIST_VERIFYING_TEXT}              Pending Requests
${CONTACT_LIST_VERIFYING_TEXT}                  Google Contacts
${SEARCH_TAB_CONNECTIONS_VERIFYING_TEXT}        Who are you looking for?

${SPREAD_THE_WORD}                              //section//a[@href="https://www.beta.ballooningnesteggs.com/spread-the-word"]
${NOTIFICATIONS}                                //section//a[@href="https://www.beta.ballooningnesteggs.com/notifications"]

${SPREAD_THE_WORD_VERIFYING_TEXT}               Build Your Community
${NOTIFICATIONS_VERIFYING_TEXT}                 Notifications

*** Keywords ***
Clicking on TRACKING link from the header
    click element                               ${TRACKING_HEADER}
    sleep                                       2s
    page should contain                         ${TRACKING_VERIFYING_TEXT}

Clicking on CONNECTIONS link from the header
    click element                               ${CONNECTIONS_HEADER}
    sleep                                       2s
    page should contain                         ${CONNECTION_VERIFYING_TEXT}

Clicking on EVENTS link from the header
    click element                               ${EVENTS_HEADER}
    sleep                                       2s
    page should contain                         ${EVENTS_VERIFYING_TEXT}

Clicking on ECARDS link from the header
    click element                               ${ECARDS_HEADER}
    sleep                                       2s
    page should contain                         ${ECARDS_VERIFYING_TEXT}

Clicking on GIVE A GIFT link from the header
    click element                               ${GIVE_A_GIFT_HEADER}
    sleep                                       2s
    page should contain                         ${GIVE_A_GIFT_VERIFYING_TEXT}

Clicking on My Profile from Profile Overlay
    click element                               ${ACCOUNT_NAME}
    click element                               ${MY_PROFILE}
    sleep                                       2s
    page should contain                         ${MY_PROFILE_VERIFYING_TEXT}

Clicking on Connect to Paypal from Profile Overlay
    click element                               ${ACCOUNT_NAME}
    click element                               ${CONNECT_TO_PAYPAL}
    sleep                                       2s
    page should contain                         ${CONNECT_TO_PAYPAL_VERIFYING_TEXT}

Clicking on settings from Profile Overlay
    click element                               ${ACCOUNT_NAME}
    click element                               ${SETTINGS}
    sleep                                       2s
    page should contain                         ${SETTINGS_VERIFYING_TEXT}

Clicking on Log out from Profile Overlay
    click element                               ${ACCOUNT_NAME}
    click element                               ${LOG_OUT}
    sleep                                       2s
    page should contain                         ${LOG_OUT_VERIFYING_TEXT}

Clicking on GIFTS under Tracking tab
    click element                               ${TRACKING_GIFT_BUTTON}
    sleep                                       1s
    page should contain                         ${TRACKING_GIFT_BUTTON_VERIFYING_TEXT}

Clicking on CARDS under Tracking tab
    click element                               ${TRACKING_CARDS_BUTTON}
    sleep                                       1s
    page should contain                         ${TRACKING_CARDS_BUTTON_VERIFYING_TEXT}

Clicking on Connections under Connections tab
    click element                               ${CONNECTIONS_LIST}
    sleep                                       1s
    page should contain                         ${CONNECTIONS_LIST_VERIFYING_TEXT}

Clicking on Contacts under Connections tab
    click element                               ${CONTACT_LIST}
    sleep                                       1s
    page should contain                         ${CONTACT_LIST_VERIFYING_TEXT}

Clicking on Search under Connections tab
    click element                               ${SEARCH_TAB_CONNECTIONS}
    sleep                                       1s
    page should contain                         ${SEARCH_TAB_CONNECTIONS_VERIFYING_TEXT}

Clicking on Spread the word link
    click element                               ${SPREAD_THE_WORD}
    sleep                                       1s
    page should contain                         ${SPREAD_THE_WORD_VERIFYING_TEXT}

Clicking on Notifications link
    click element                               ${NOTIFICATIONS}
    sleep                                       1s
    page should contain                         ${NOTIFICATIONS_VERIFYING_TEXT}
