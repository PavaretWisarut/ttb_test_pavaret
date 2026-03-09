*** Keywords ***
Open heroku website
    [Arguments]    ${url}=${HEROKU_URL}
    [Documentation]  Open heroku website
    ${options}=    BuiltIn.Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    BuiltIn.Call Method     ${options}     add_argument     --incognito
    SeleniumLibrary.Open browser        url=${url}       browser=chrome    options=${options}
    SeleniumLibrary.Maximize browser window

Wait until element is visible with retry
    [Documentation]    Wait until element is visible with retry
    ...     ${max_attempt} e.g. by default is 3 rounds
    ...     ${timeout} e.g. by default is 40s
    [Arguments]    ${locator}    ${max_attempt}=${global.default_max_attempt}    ${timeout}=${global.wait_timeout}

    FOR    ${i}    IN RANGE    ${max_attempt}
        ${status}=    Builtin.Run keyword and return status    SeleniumLibrary.Wait until element is visible    ${locator}    ${timeout}
        IF    ${status}
            RETURN
        END
    END

    Fail    Element '${locator}' not visible after ${max_attempt} attempts

Tap element and input text to element when ready
    [Documentation]    Tap element and input text to element when ready
    [Arguments]    ${locator}    ${text}    ${timeout}=${global.wait_timeout}
    common_web.Wait until element is visible with retry    locator=${locator}    timeout=${timeout}
    SeleniumLibrary.Click element    ${locator}
    SeleniumLibrary.Input text    ${locator}    ${text}

Tap element when ready
    [Documentation]    Tap element when element is ready
    [Arguments]    ${locator}    ${timeout}=${global.wait_timeout}
    common_web.Wait until element is visible with retry    locator=${locator}    timeout=${timeout}
    SeleniumLibrary.Click element    ${locator}