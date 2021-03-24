*** Settings ***
Library    SeleniumLibrary



*** Variables ***
${FAMILY_HEADER}                    //nav[@class="c-nav"]/ul/li[1]
${FAMILY_VERIFYING_TEXT}            My Family





*** Keywords ***
Clicking on Family tab on the top navigation
    click element                   ${FAMILY_HEADER}
    sleep                           2s
    page should contain             ${FAMILY_VERIFYING_TEXT}