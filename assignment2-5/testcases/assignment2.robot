*** Settings ***
Resource    ${CURDIR}/../resources/import.robot
Variables   ${CURDIR}/../resources/testdata/assignment2.yaml
Test Setup       common_web.Open heroku website
Test Teardown    SeleniumLibrary.Close all browsers


*** Test Cases ***
Test_heroku_01 : Login success
    [Documentation]    To verify that users can login successfully when input a correct username and password.
    [Tags]    test_id:test_heroku_01    platform:web    feature:login
    # Verify login page is show
    heroku_login_page.Verify login page is displayed
    # input user name and password
    heroku_login_feature.Login to heroku  username=${assignment2.test_heroku_01.username}  password=${assignment2.test_heroku_01.password}
    # verify login success and message
    heroku_login_page.Verify login success popup is displayed
    # Click logout button
    heroku_login_page.Click logout button
    # Verify logout message
    heroku_login_page.Verify logout success popup is displayed

Test_heroku_02 : Login failed - password incorrect
    [Documentation]    To verify that users can login unsuccessfully when they input a correct username but wrong password.
    [Tags]    test_id:test_heroku_02    platform:web    feature:login
    # Verify login page is show
    heroku_login_page.Verify login page is displayed
    # input user name and password
    heroku_login_feature.Login to heroku  username=${assignment2.test_heroku_02.username}  password=${assignment2.test_heroku_02.password}
    # Verify login password failed message is displayed
    heroku_login_page.Verify login password failed popup is displayed

Test_heroku_03 : Login failed - username not found
    [Documentation]    To verify that users can login unsuccessfully when they input a username that did not exist.
    [Tags]    test_id:test_heroku_03    platform:web    feature:login
    # Verify login page is show
    heroku_login_page.Verify login page is displayed
    # input user name and password
    heroku_login_feature.Login to heroku  username=${assignment2.test_heroku_03.username}  password=${assignment2.test_heroku_03.password}
    # Verify login username failed message is displayed
    heroku_login_page.Verify login username failed popup is displayed
