*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${CREATE_ACCOUNT}                   //button[@id="create-bne-account"]
${FIRST_NAME}                       //input[@placeholder="First Name"]
${LAST_NAME}                        //input[@placeholder="Last Name"]
${EMAIL_FIELD}                      //input[@placeholder="email@example.org"]
${PASSWORD_FIELD}                    //input[@placeholder="Password"]
${CONFIRM_PASSWORD_FIELD}            //input[@placeholder="Confirm Password"]
${FIRST_NAME_VALUE}                 Sam
${LAST_NAME_VALUE}                  Smith
${EMAIL_FIELD_VALUE}                samsmith01@gmail.com
${PASSWORD_FIELD_VALUE}             Test0000
${ENTER_BUTTON}                     //i[@id="send-message-ajax"]

*** Keywords ***
Clicking on Create Account button
    click element                   ${CREATE_ACCOUNT}

Inputting user's first name
    input text                      ${FIRST_NAME}                       ${FIRST_NAME_VALUE}
    click element                   ${ENTER_BUTTON}

Inputting user's last name
    input text                      ${LAST_NAME}                        ${LAST_NAME_VALUE}
    click element                   ${ENTER_BUTTON}


Inputting user's email
    input text                      ${EMAIL_FIELD}                      ${EMAIL_FIELD_VALUE}
    click element                   ${ENTER_BUTTON}

Inputting user's password
    input text                      ${PASSWORD_FIELD}                    ${PASSWORD_FIELD_VALUE}
    click element                   ${ENTER_BUTTON}

Confirming users password
    input text                      ${CONFIRM_PASSWORD_FIELD}            ${PASSWORD_FIELD_VALUE}
    click element                   ${ENTER_BUTTON}