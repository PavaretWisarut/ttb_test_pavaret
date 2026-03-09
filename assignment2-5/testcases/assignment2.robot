*** Settings ***
Resource    ${CURDIR}/../resources/import.robot

*** Test Cases ***
Test_heroku_01 : Login success
    [Documentation]    To verify that users can login successfully when input a correct username and password.
