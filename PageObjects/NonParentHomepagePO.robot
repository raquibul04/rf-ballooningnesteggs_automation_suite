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


