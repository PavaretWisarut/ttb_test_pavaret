*** Keywords ***

Verify title is displayed
    [Documentation]    Verify title is displayed
    common_mobile.Wait until element is visible with retry    locator=${add_todo_locator.lbl_title}

Verify input title field is displayed
    [Documentation]    Verify input title field is displayed
    common_mobile.Wait until element is visible with retry    locator=${add_todo_locator.txt_input_title}

Verify send button is displayed
    [Documentation]    Verify send button is displayed
    common_mobile.Wait until element is visible with retry    locator=${add_todo_locator.btn_send}

Verify clock icon is displayed
    [Documentation]    Verify clock icon is displayed
    common_mobile.Wait until element is visible with retry    locator=${add_todo_locator.icon_clock}

Verify remind me text is displayed
    [Documentation]    Verify remind me text is displayed
    common_mobile.Wait until element is visible with retry    locator=${add_todo_locator.lbl_remind_me}

Verify toggle button is displayed
    [Documentation]    Verify toggle button is displayed
    common_mobile.Wait until element is visible with retry    locator=${add_todo_locator.btn_toggle}

Input title
    [Documentation]    Input title in title field
    [Arguments]    ${title}
    common_mobile.Tap element and input text to element when ready    locator=${add_todo_locator.txt_input_title}    text=${title}

Verify title is displayed as expected
    [Documentation]    Verify title is displayed as expected after input title
    [Arguments]    ${title}
    ${locator}    String.Replace string    string=${add_todo_locator.txt_input_title}    search_for=***string***    replace_with=${title}
    common_mobile.Wait until element is visible with retry    locator=${locator}

Tap toggle
    [Documentation]    Tap toggle in add todo page
    common_mobile.Tap element when ready    locator=${add_todo_locator.btn_toggle}

Verify date field is displayed
    [Documentation]    Verify date field is displayed
    common_mobile.Wait until element is visible with retry    locator=${add_todo_locator.lbl_datetime_field}

Verify add symbol is displayed
    [Documentation]    Verify add symbol is displayed
    common_mobile.Wait until element is visible with retry    locator=${add_todo_locator.lbl_add_symbol}

Verify time field is displayed
    [Documentation]    Verify time field is displayed
    common_mobile.Wait until element is visible with retry    locator=${add_todo_locator.lbl_time_field}

Select date
    [Documentation]    Select date
    ...    ${date} e.g. 11 มีนาคม 2026
    [Arguments]    ${date}
    common_mobile.Tap element when ready    locator=${add_todo_locator.lbl_datetime_field}
    ${locator}    String.Replace string    string=${add_todo_locator.lbl_selected_datetime}    search_for=***string***    replace_with=${date}
    common_mobile.Tap element when ready    locator=${locator}
    common_mobile.Tap element when ready    locator=${add_todo_locator.btn_ok_popup}
    
Verify date is displayed as expected
    [Documentation]    Verify date is displayed as expected
    ...    ${date} e.g. 11 มี.ค.,2026
    [Arguments]    ${date}
    ${locator}    String.Replace string    string=${add_todo_locator.lbl_verify_datetime}    search_for=***string***    replace_with=${date}
    common_mobile.Wait until element is visible with retry    locator=${locator}
    
Tap send button
    [Documentation]    Tap send button
    common_mobile.Tap element when ready    locator=${add_todo_locator.btn_send}
    


