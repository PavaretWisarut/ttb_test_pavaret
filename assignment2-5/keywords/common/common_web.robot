*** Settings ***
Resource    ${CURDIR}/../../resources/import.robot

*** Keywords ***
Open website
    [Arguments]    ${url}=${HEROKU_URL}
    [Documentation]  Open app minimal
    Open application from path    ${app_minimal}    appWaitForLaunch=true    unicodeKeyboard=true    resetKeyboard=true    autoGrantPermissions=true

