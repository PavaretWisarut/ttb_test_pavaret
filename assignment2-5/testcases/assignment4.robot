*** Settings ***
Resource    ${CURDIR}/../resources/import.robot
Variables   ${CURDIR}/../resources/testdata/assignment3.yaml


*** Test Cases ***
Mobile_test_01 : Verify minimal todo application
    [Documentation]    Verify all feature in the minimal todo application is working correctly
    [Tags]    test_id:Mobile_test_01    platform:mobile    feature:todo