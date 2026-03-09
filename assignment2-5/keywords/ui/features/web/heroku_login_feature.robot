*** Keywords ***

Login to heroku
    [Documentation]    This feature use for login to heroku in login page
    ...    ${username} e.g. tomsmith
    ...    ${password} e.g. SuperSecretPassword!
    [Arguments]    ${username}    ${password}
    heroku_login_page.Input username  username=${username}
    heroku_login_page.Input password  password=${password}
    heroku_login_page.Click login button