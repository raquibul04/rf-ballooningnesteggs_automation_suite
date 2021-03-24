*** Settings ***
Library    SeleniumLibrary



*** Variables ***
${LOGIN_EMAIL_FIELD}                                    //input[@placeholder="Email"]
${LOGIN_PASSWORD_FIELD}                                 //input[@placeholder="Password"]
${SIGN_IN_BUTTON}                                       //button[@type="submit"]
${LOGIN_EMAIL_FIELD_VALUE}                              raquibul04@gmail.com
${LOGIN_PASSWORD_FIELD_VALUE}                           Barca@0987
${LOGIN_EMAIL_FIELD_VALUE_PA}                           xtraemily2@gmail.com
${LOGIN_PASSWORD_FIELD_VALUE_PA}                        xtraemily2x

*** Keywords ***
Inputting user's email on the email field
    input text                      ${LOGIN_EMAIL_FIELD}                       ${LOGIN_EMAIL_FIELD_VALUE}
    sleep    1s

Inputting user's password on the password field
    input text                      ${LOGIN_PASSWORD_FIELD}                    ${LOGIN_PASSWORD_FIELD_VALUE}
    sleep    1s

Clicking on signin button
    click element                   ${SIGN_IN_BUTTON}
    sleep   2s

Inputting user's email on the email field for a parent account
    input text                      ${LOGIN_EMAIL_FIELD}                       ${LOGIN_EMAIL_FIELD_VALUE_PA}
    sleep    1s

Inputting user's password on the password field for a parent account
    input text                      ${LOGIN_PASSWORD_FIELD}                    ${LOGIN_PASSWORD_FIELD_VALUE_PA}
    sleep    1s