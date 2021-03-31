*** Settings ***
Library    SeleniumLibrary



*** Variables ***
${FAMILY_HEADER}                                        //nav[@class="c-nav"]/ul/li[1]
${FAMILY_VERIFYING_TEXT}                                My Family
${ADD_CONNECTION_ICON}                                  //h2[@class='c-ribbon--compound']/div[2]/div/a
${ADD_CONNECTION_ICON_VERIFYING_TEXT}                   My Network
${GIFT_ICON_UNDER_NOTIFICATION}                         //section[@class="c-notifications"]/ul/li[2]/a
${GIFT_ICON_UNDER_NOTIFICATION_VERIFYING_TEXT}          Woo hoo

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