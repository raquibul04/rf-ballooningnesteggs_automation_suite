*** Settings ***
Library    SeleniumLibrary



*** Variables ***
${FAMILY_HEADER}                                        //nav[@class="c-nav"]/ul/li[1]
${FAMILY_VERIFYING_TEXT}                                My Family
${ADD_CONNECTION_ICON}                                  //h2[@class='c-ribbon--compound']/div[2]/div/a
${ADD_CONNECTION_ICON_VERIFYING_TEXT}                   My Network
${GIFT_ICON_UNDER_NOTIFICATION}                         //section[@class="c-notifications"]/ul/li[2]/a
${GIFT_ICON_UNDER_NOTIFICATION_VERIFYING_TEXT}          Woo hoo

${EVENT_LINK_HOMEPAGE}                                  //div[@id='post-data']/ul/li[1]/article/p[2]/a
${EVENT_LINK_VERIFYING_TEXT}                            Comments

${SELECT_CHILD_BUTTON}                                  //button[@class="c-child-select"]
${CHILD_NAME}                                           //ul[@class="c-child-select__list is-visible"]/li[2]


${EDIT_FAMILY_FROM_FAMILY_TAB}                          //div[@class="l-group l-group--wrap"]/div[2]/div[2]/a
${EDIT_FAMILY_FROM_FAMILY_TAB_VERIFYING_TEXT}           My Family's Profile

${EVENTS_CARD}                                          //div[@id="active-content-tabs"]/div/ul[1]/li[1]/article
${GIFTS_TAB}                                            //div[@class="c-tabs"]/div/ul/li[2]/a
${EVENTS_TAB}                                           //div[@class="c-tabs"]/div/ul/li[3]/a
${CARDS_TAB}                                            //div[@class="c-tabs"]/div/ul/li[4]/a
${GIFTS_TAB_VERIFYING_TEXT}                             Received Gifts
${CARDS_TAB_VERIFYING_TEXT}                             Cards Received
*** Keywords ***
Clicking on Family tab on the top navigation
    click element                   ${FAMILY_HEADER}
    sleep                           2s
    page should contain             ${FAMILY_VERIFYING_TEXT}

Clicking on Add connection icon from See What Everyone’s Up To label
    click element                   ${ADD_CONNECTION_ICON}
    sleep                           2s
    page should contain             ${ADD_CONNECTION_ICON_VERIFYING_TEXT}

Clicking on the gift icon in order to navigate to the gift page
    click element                   ${GIFT_ICON_UNDER_NOTIFICATION}
    sleep                           2s
    page should contain             ${GIFT_ICON_UNDER_NOTIFICATION_VERIFYING_TEXT}

Clicking on an event from the homepage
    Execute Javascript              $(document).scrollTop(500)
    click element                   ${EVENT_LINK_HOMEPAGE}
    sleep                           2s
    Execute Javascript              $(document).scrollTop(300)
    sleep                           1s
    page should contain             ${EVENT_LINK_VERIFYING_TEXT}

Selecting a child for an event card
    click element                   ${SELECT_CHILD_BUTTON}
    click element                   ${CHILD_NAME}
    page should contain             James

Clicking on Edit Profile button
    click element                   ${EDIT_FAMILY_FROM_FAMILY_TAB}
    sleep                           1s
    page should contain             ${EDIT_FAMILY_FROM_FAMILY_TAB_VERIFYING_TEXT}

Clicking and verifying My Updates tab
    element should be visible       ${EVENTS_CARD}

Clicking on Gifts tab
    click element                   ${GIFTS_TAB}
    sleep                           1s
    page should contain             ${GIFTS_TAB_VERIFYING_TEXT}

Clicking on Events tab
    click element                   ${EVENTS_TAB}
    sleep                           1s
    element should be visible       ${EVENTS_CARD}

Clicking on Cards tab
    click element                   ${CARDS_TAB}
    sleep                           1s
    page should contain             ${CARDS_TAB_VERIFYING_TEXT}