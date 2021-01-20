*** Settings ***
Library    SeleniumLibrary



*** Variables ***
${UPDATING_FIRST_NAME}                              //input[@id="add-family-member-first-name"]
${UPDATING_LAST_NAME}                               //input[@id="add-family-member-last-name"]
${UPDATING_BIRTH_YEAR}                              //select[@id="add-family-member-birthdate-year"]
${UPDATING_BIRTH_MONTH}                             //select[@id="add-family-member-birthdate-month"]
${UPDATING_BIRTH_DATE}                              //select[@id="add-family-member-birthdate-day"]
${UPDATING_CELL_PHONE}                              //input[@id="add-family-member-cellphone"]
${UPDATING_CITY}                                    //input[@id="add-family-member-city"]
${UPDATING_STATE}                                   //select[@id="family-state"]
${UPDATING_ZIP_CODE}                                //input[@id="add-family-member-zip"]
${UPDATING_INFORMATION_BUTTON}                      //button[@id="submit-update-family-member-personal-info"]

${UPDATING_FIRST_NAME_TEXT}                         Raquibul
${UPDATING_LAST_NAME_TEXT}                          Mowla
${UPDATING_BIRTH_YEAR_TEXT}                         1993
${UPDATING_BIRTH_MONTH_TEXT}                        1
${UPDATING_BIRTH_DATE_TEXT}                         19
${UPDATING_CELL_PHONE_TEXT}                         6465499095
${UPDATING_CITY_TEXT}                               brooklyn
${UPDATING_STATE_TEXT}                              37
${UPDATING_ZIP_CODE_TEXT}                           11208
${UPDATE_CONFIRMATION_TEXT}                         Your profile is updated

*** Keywords ***
Updating first name
    clear element text                              ${UPDATING_FIRST_NAME}
    sleep                                           1s
    input text                                      ${UPDATING_FIRST_NAME}                    ${UPDATING_FIRST_NAME_TEXT}
    element attribute value should be               ${UPDATING_FIRST_NAME}        value       ${UPDATING_FIRST_NAME_TEXT}

Updating last name
    clear element text                              ${UPDATING_LAST_NAME}
    sleep                                           1s
    input text                                      ${UPDATING_LAST_NAME}                       ${UPDATING_LAST_NAME_TEXT}
    element attribute value should be               ${UPDATING_LAST_NAME}        value          ${UPDATING_LAST_NAME_TEXT}

Updaing birth year
    click element                                   ${UPDATING_BIRTH_YEAR}
    sleep                                           1s
    select from list by value                       ${UPDATING_BIRTH_YEAR}                       ${UPDATING_BIRTH_YEAR_TEXT}
    list selection should be                        ${UPDATING_BIRTH_YEAR}                       ${UPDATING_BIRTH_YEAR_TEXT}

Updaing birth month
    click element                                   ${UPDATING_BIRTH_MONTH}
    sleep                                           1s
    select from list by value                       ${UPDATING_BIRTH_MONTH}                       ${UPDATING_BIRTH_MONTH_TEXT}
    list selection should be                        ${UPDATING_BIRTH_MONTH}                       ${UPDATING_BIRTH_MONTH_TEXT}

Updaing birth date
    click element                                   ${UPDATING_BIRTH_DATE}
    sleep                                           1s
    select from list by value                       ${UPDATING_BIRTH_DATE}                        ${UPDATING_BIRTH_DATE_TEXT}
    list selection should be                        ${UPDATING_BIRTH_DATE}                        ${UPDATING_BIRTH_DATE_TEXT}

Updating cell phone number
    clear element text                              ${UPDATING_CELL_PHONE}
    sleep                                           1s
    input text                                      ${UPDATING_CELL_PHONE}                         ${UPDATING_CELL_PHONE_TEXT}
    element attribute value should be               ${UPDATING_CELL_PHONE}          value          ${UPDATING_CELL_PHONE_TEXT}

Updating city
    clear element text                              ${UPDATING_CITY}
    sleep                                           1s
    input text                                      ${UPDATING_CITY}                               ${UPDATING_CITY_TEXT}
    element attribute value should be                ${UPDATING_CITY}                value         ${UPDATING_CITY_TEXT}

Updating state
    click element                                   ${UPDATING_STATE}
    sleep                                           1s
    select from list by value                       ${UPDATING_STATE}                              ${UPDATING_STATE_TEXT}
    list selection should be                        ${UPDATING_STATE}                              ${UPDATING_STATE_TEXT}

Updating zip code
    clear element text                              ${UPDATING_ZIP_CODE}
    sleep                                           1s
    input text                                      ${UPDATING_ZIP_CODE}                           ${UPDATING_ZIP_CODE_TEXT}
    element attribute value should be               ${UPDATING_ZIP_CODE}              value        ${UPDATING_ZIP_CODE_TEXT}

Saving the updated information
    click button                                    ${UPDATING_INFORMATION_BUTTON}
    sleep     3s
    page should contain                             ${UPDATE_CONFIRMATION_TEXT}