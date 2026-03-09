*** Settings ***
Resource    ${CURDIR}/../resources/import.robot
Variables   ${CURDIR}/../resources/testdata/assignment3.yaml


*** Test Cases ***
API_test_01 : Get user profile success
    [Documentation]    To verify get user profile api will return correct data when trying to get profile of existing user
    [Tags]    test_id:API_test_01    platform:api    feature:user_profile
    # Send GET request to get user profile
    ${status}    ${response_json}    user_profile_api.Get user profile    user_id=${assignment3.api_test_01.user_id}
    # Verify status code is equal 200
    BuiltIn.Should be equal as integers    first=${status}    second=200
    # Verify response body with expected data
    user_profile_api.Verify user profile response is eqaul as expected
    ...    response_json=${response_json}   
    ...    expected_response=${assignment3.api_test_01.expected_response}

API_test_02 : Get user profile but user not found
    [Documentation]    To verify get user profile api will return 404 not found when trying to get exist profile of not existing user
    [Tags]    test_id:API_test_02    platform:api    feature:user_profile
    # Send GET request to get user profile and verify status code is 404
    ${status}    ${response_json}    user_profile_api.Get user profile    user_id=${assignment3.api_test_02.user_id}
    # Verify status code is equal 404
    BuiltIn.Should be equal as integers    first=${status}    second=404
    # Verify response body should be empty dictionary {}
    BuiltIn.Should be empty    ${response_json}



