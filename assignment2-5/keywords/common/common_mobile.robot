*** Keywords ***
Open todo minimal application
    [Documentation]  Open todo minimal application
    AppiumLibrary.Open application    ${config.remote_path}
    ...    platformName=${config.platform_name}
    ...    deviceName=${config.device_name}
    ...    app=${config.app_path}
    ...    automationName=${config.automation_name}
    ...    autoGrantPermissions=${FALSE}
    ...    noReset=${FALSE}

Wait until element is visible with retry
    [Documentation]    Wait until element is visible with retry
    ...     ${max_attempt} e.g. by default is 3 rounds
    ...     ${timeout} e.g. by default is 40s
    [Arguments]    ${locator}    ${max_attempt}=${global.default_max_attempt}    ${timeout}=${global.wait_timeout}

    FOR    ${i}    IN RANGE    ${max_attempt}
        ${status}=    Builtin.Run keyword and return status    AppiumLibrary.Wait until element is visible    ${locator}    ${timeout}
        IF    ${status}
            RETURN
        END
    END

    Fail    Element '${locator}' not visible after ${max_attempt} attempts

Tap element and input text to element when ready
    [Documentation]    Tap element and input text to element when ready
    [Arguments]    ${locator}    ${text}    ${timeout}=${global.wait_timeout}
    common_mobile.Wait until element is visible with retry    locator=${locator}    timeout=${timeout}
    AppiumLibrary.Click element    ${locator}
    AppiumLibrary.Input text    ${locator}    ${text}

Tap element when ready
    [Documentation]    Tap element when element is ready
    [Arguments]    ${locator}    ${timeout}=${global.wait_timeout}
    common_mobile.Wait until element is visible with retry    locator=${locator}    timeout=${timeout}
    AppiumLibrary.Click element    ${locator}

Get current thai date format
    [Documentation]    Get current thai date format and can plus date
    ...    ${plus_date} e.g. 1 example if today is 11/03/2026 it will convert to 12/03/2026
    ...    RETURN current_date as 11 มีนาคม 2026
    [Arguments]    ${plus_date}=0
    ${date}=    Get Current Date    increment=${plus_date} days    result_format=%d-%m-%Y
    ${day}=     Evaluate    "${date}".split("-")[0]
    ${month}=   Evaluate    int("${date}".split("-")[1])
    ${year}=    Evaluate    "${date}".split("-")[2]
    @{months}=    Create List
    ...    มกราคม    กุมภาพันธ์    มีนาคม    เมษายน
    ...    พฤษภาคม    มิถุนายน    กรกฎาคม    สิงหาคม
    ...    กันยายน    ตุลาคม    พฤศจิกายน    ธันวาคม
    ${month_name}=    Get From List    ${months}    ${month-1}
    ${thai_date}=    Set Variable    ${day} ${month_name} ${year}
    RETURN   ${thai_date}

Convert thai date to short
    [Documentation]    Convert thai date to short
    ...    ${thai_date} e.g. 11 มีนาคม 2026
    ...    RETURN current_date as 11 มี.ค., 2026
    [Arguments]    ${thai_date}
    @{parts}=    Split String    ${thai_date}    ${SPACE}
    ${day}=      Get From List    ${parts}    0
    ${month}=    Get From List    ${parts}    1
    ${year}=     Get From List    ${parts}    2
    &{months}=    Create Dictionary
    ...    มกราคม=ม.ค.
    ...    กุมภาพันธ์=ก.พ.
    ...    มีนาคม=มี.ค.
    ...    เมษายน=เม.ย.
    ...    พฤษภาคม=พ.ค.
    ...    มิถุนายน=มิ.ย.
    ...    กรกฎาคม=ก.ค.
    ...    สิงหาคม=ส.ค.
    ...    กันยายน=ก.ย.
    ...    ตุลาคม=ต.ค.
    ...    พฤศจิกายน=พ.ย.
    ...    ธันวาคม=ธ.ค.
    ${short_month}=    Get From Dictionary    ${months}    ${month}
    ${result}=    Set Variable    ${day} ${short_month}, ${year}
    RETURN    ${result}

Convert thai date to month day year format
    [Documentation]    Convert Thai date "11 มีนาคม 2026" → "มี.ค. 11, 2026"
    [Arguments]    ${thai_date}
    @{parts}=    Split String    ${thai_date}    ${SPACE}
    ${day}=      Get From List    ${parts}    0
    ${month}=    Get From List    ${parts}    1
    ${year}=     Get From List    ${parts}    2
    &{months}=    Create Dictionary
    ...    มกราคม=ม.ค.
    ...    กุมภาพันธ์=ก.พ.
    ...    มีนาคม=มี.ค.
    ...    เมษายน=เม.ย.
    ...    พฤษภาคม=พ.ค.
    ...    มิถุนายน=มิ.ย.
    ...    กรกฎาคม=ก.ค.
    ...    สิงหาคม=ส.ค.
    ...    กันยายน=ก.ย.
    ...    ตุลาคม=ต.ค.
    ...    พฤศจิกายน=พ.ย.
    ...    ธันวาคม=ธ.ค.
    ${short_month}=    Get From Dictionary    ${months}    ${month}
    ${result}=    Set Variable    ${short_month} ${day}, ${year}
    RETURN    ${result}
