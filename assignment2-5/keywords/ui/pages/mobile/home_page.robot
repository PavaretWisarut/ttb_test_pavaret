*** Keywords ***

Verify header is displayed
    [Documentation]    Verify header is displayed
    common_mobile.Wait until element is visible with retry    locator=${home_locator.lbl_header}
    
Verify kebab icon is displayed
    [Documentation]    Verify kebab icon is displayed
    common_mobile.Wait until element is visible with retry    locator=${home_locator.icon_kebab}

Tap kebab icon
    [Documentation]    Tap kebab icon
    common_mobile.Tap element when ready    locator=${home_locator.icon_kebab}

Verify setting menu is displayed
    [Documentation]    Verify setting menu is displayed
    common_mobile.Wait until element is visible with retry    locator=${home_locator.lbl_setting}

Tap setting menu
    [Documentation]    Tap setting menu
    common_mobile.Tap element when ready    locator=${home_locator.lbl_setting}

Verify about menu is displayed
    [Documentation]    Verify about menu is displayed
    common_mobile.Wait until element is visible with retry    locator=${home_locator.lbl_about}

Tap about menu
    [Documentation]    Tap about menu
    common_mobile.Tap element when ready    locator=${home_locator.lbl_about}

Verify nightmode title is displayed
    [Documentation]    Verify nightmode title is displayed
    common_mobile.Wait until element is visible with retry    locator=${home_locator.lbl_nightmode_title}

Verify nightmode description is displayed
    [Documentation]    Verify nightmode description is displayed
    common_mobile.Wait until element is visible with retry    locator=${home_locator.lbl_nightmode_desc}

Tap back button
    [Documentation]    Tap back button
    common_mobile.Tap element when ready    locator=${home_locator.btn_back}

Verify add icon is displayed
    [Documentation]    Verify add icon is displayed
    common_mobile.Wait until element is visible with retry    locator=${home_locator.btn_add}

Tap add button
    [Documentation]   Tap add button 
    common_mobile.Tap element when ready    locator=${home_locator.btn_add}

Verify todo title and image is displayed as expected
    [Documentation]    Verify todo image is displayed as expected
    ...    ${todo_title} e.g. title
    [Arguments]    ${todo_title}
    ${locator}    String.Replace string    string=${home_locator.lbl_todo_title}    search_for=***string***    replace_with=${todo_title}
    common_mobile.Wait until element is visible with retry    locator=${locator}

Verify todo date is displayed as expected
    [Documentation]    Verify todo date is displayed as expected
    ...    ${todo_title} e.g. title
    ...    ${date} e.g. มี.ค. 11, 2026
    [Arguments]    ${todo_title}    ${date}
    ${locator}    String.Replace string    string=${home_locator.lbl_todo_date_time}    search_for=***todo_title***    replace_with=${todo_title}
    ${locator}    String.Replace string    string=${locator}    search_for=***date***    replace_with=${date}
    common_mobile.Wait until element is visible with retry    locator=${locator}

Verify about icon is displayed
    [Documentation]    Verify about icon is displayed
    common_mobile.Wait until element is visible with retry    locator=${home_locator.icon_about}

Verify about title is displayed
    [Documentation]    Verify about title is displayed
    common_mobile.Wait until element is visible with retry    locator=${home_locator.lbl_about_title}

Verify made by is displayed
    [Documentation]    Verify made by is displayed
    common_mobile.Wait until element is visible with retry    locator=${home_locator.lbl_about_made_by}

Verify contact me is displayed
    [Documentation]    Verify contact me is displayed
    common_mobile.Wait until element is visible with retry    locator=${home_locator.lbl_about_contact_me}

Verify email is displayed
    [Documentation]    Verify email is displayed
    common_mobile.Wait until element is visible with retry    locator=${home_locator.lbl_about_email}
