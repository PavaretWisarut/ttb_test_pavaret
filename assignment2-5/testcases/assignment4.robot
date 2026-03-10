*** Settings ***
Resource    ${CURDIR}/../resources/import.robot
Variables   ${CURDIR}/../resources/testdata/assignment4.yaml
Test Setup    common_mobile.Open todo minimal application
Test Teardown    AppiumLibrary.Close all applications

*** Test Cases ***
Mobile_test_01 : Verify minimal todo application
    [Documentation]    Verify all feature in the minimal todo application is working correctly
    [Tags]    test_id:Mobile_test_01    platform:mobile    feature:todo
    # Verify all components in home page is displayed correctly
    home_feature.Verify all components in home page is displayed
    home_page.Tap add button
    # verify all components in add todo page
    add_todo_feature.Verify all components in add todo page is displayed
    add_todo_page.Input title    title=${assignment4.title}
    add_todo_page.Verify title is displayed as expected    title=${assignment4.title}
    # verify add date time today
    add_todo_page.Tap toggle
    ${current_date}    common_mobile.Get current thai date format
    ${short_current_date}    common_mobile.Convert thai date to short    thai_date=${current_date}
    add_todo_feature.Select datetime and verify datetime is displayed as expected    date_time=${current_date}    short_date_time=${short_current_date}
    # verify add date time future
    ${tomorrow_date}    common_mobile.Get current thai date format    plus_date=1
    ${short_tomorrow_date}    common_mobile.Convert thai date to short    thai_date=${tomorrow_date}
    add_todo_feature.Select datetime and verify datetime is displayed as expected    date_time=${tomorrow_date}    short_date_time=${short_tomorrow_date}
    # verify add date time pass
    ${pass_date}    common_mobile.Get current thai date format    plus_date=-1
    add_todo_feature.Select datetime and verify datetime is displayed as expected    date_time=${pass_date}    short_date_time=${short_tomorrow_date}
    # tap send button
    add_todo_page.Tap send button
    # check data at home page
    ${verify_date_format}    common_mobile.Convert thai date to month day year format    thai_date=${tomorrow_date}
    home_feature.Verify all components in home page is displayed
    home_page.Verify todo title and image is displayed as expected    todo_title=${assignment4.verify_title}
    home_page.Verify todo date is displayed as expected    todo_title=${assignment4.verify_title}    date=${verify_date_format}
    # verify all components in setting page
    home_page.Tap kebab icon
    home_feature.Verify all components in kebab menu
    home_page.Tap setting menu
    home_feature.Verify all components in settings menu  
    home_page.Tap back button
    # verify all components in about page
    home_page.Tap kebab icon
    home_feature.Verify all components in kebab menu
    home_page.Tap about menu
    home_feature.Verify all components in about page
    home_page.Tap back button