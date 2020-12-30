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




