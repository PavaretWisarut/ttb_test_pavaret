*** Variables ***
${heroku_login_locator.lbl_login}    xpath=//div[@class="example"]/h2[text()="${heroku_trans.lbl_login}"]
${heroku_login_locator.txt_username}    id=username
${heroku_login_locator.txt_password}    id=password
${heroku_login_locator.btn_login}    xpath=//button[@type="submit"]
${heroku_login_locator.lbl_login_success}    xpath=//div[@id="flash-messages"]/div[contains(text(),"${heroku_trans.lbl_login_success}")]
${heroku_login_locator.btn_logout}    xpath=//a[@href="/logout"]
${heroku_login_locator.lbl_logout_success}    xpath=//div[@id="flash-messages"]/div[contains(text(),"${heroku_trans.lbl_logout_success}")]
${heroku_login_locator.lbl_login_password_failed}    xpath=//div[@id="flash" and contains(text(),"${heroku_trans.lbl_login_password_failed}")]
${heroku_login_locator.lbl_login_username_failed}    xpath=//div[@id="flash" and contains(text(),"${heroku_trans.lbl_login_username_failed}")]