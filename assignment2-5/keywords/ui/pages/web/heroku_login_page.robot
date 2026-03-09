*** Keywords ***

Verify login page is displayed
    [Documentation]    Verify login page is displayed label "Login Page"
    common_web.Wait until element is visible with retry    locator=${heroku_login_locator.lbl_login}

Input username
    [Documentation]    Input username into username field
    ...    ${username} e.g. tomsmith
    [Arguments]    ${username}
    common_web.Tap element and input text to element when ready    locator=${heroku_login_locator.txt_username}    text=${username}

Input password
    [Documentation]    Input password into password field
     ...    ${password} e.g. SuperSecretPassword!
    [Arguments]    ${password}
    common_web.Tap element and input text to element when ready    locator=${heroku_login_locator.txt_password}    text=${password}

Click login button
    [Documentation]    Click login button
    common_web.Tap element when ready    locator=${heroku_login_locator.btn_login}

Verify login success popup is displayed
    [Documentation]    Verify login success popup is displayed popup label is "You logged into a secure area!"
    common_web.Wait until element is visible with retry    locator=${heroku_login_locator.lbl_login_success}

Click logout button
    [Documentation]    Click logout button
    common_web.Tap element when ready  locator=${heroku_login_locator.btn_logout}

Verify logout success popup is displayed
    [Documentation]    Verify login success popup is displayed popup label is " You logged out of the secure area!"
    common_web.Wait until element is visible with retry    locator=${heroku_login_locator.lbl_logout_success}

Verify login password failed popup is displayed
    [Documentation]    Verify login password failed popup is displayed popup label is "Your password is invalid!"
    common_web.Wait until element is visible with retry    locator=${heroku_login_locator.lbl_login_password_failed}

Verify login username failed popup is displayed
    [Documentation]    Verify login username failed popup is displayed popup label is "Your password is invalid!"
    common_web.Wait until element is visible with retry    locator=${heroku_login_locator.lbl_login_username_failed}