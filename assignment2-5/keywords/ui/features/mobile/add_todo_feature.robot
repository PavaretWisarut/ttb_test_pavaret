*** Keywords ***

Verify all components in add todo page is displayed
    [Documentation]    Verify all components in add todo page is displayed
    add_todo_page.Verify title is displayed
    add_todo_page.Verify input title field is displayed
    add_todo_page.Verify send button is displayed
    add_todo_page.Verify clock icon is displayed
    add_todo_page.Verify remind me text is displayed
    add_todo_page.Verify toggle button is displayed

Verify all components after tap toggle is displayed
    [Documentation]    Verify all components after tap toggle is displayed such as field , date , time , add symbol
    add_todo_page.Verify date field is displayed
    add_todo_page.Verify add symbol is displayed
    add_todo_page.Verify time field is displayed

Select datetime and verify datetime is displayed as expected
    [Documentation]    Select datetime and verify datetime is displayed as expected
    ...    ${date_time} e.g. 11 มีนาคม 2026
    ...    ${short_date_time} e.g. 11 มี.ค., 2026
    [Arguments]    ${date_time}    ${short_date_time}
    add_todo_feature.Verify all components after tap toggle is displayed
    add_todo_page.Select date    date=${date_time}
    add_todo_page.Verify date is displayed as expected    date=${short_date_time}