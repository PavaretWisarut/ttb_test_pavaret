*** Settings ***

*** Keywords ***
Get user profile
    [Documentation]    This keyword using for get user profile with valid user id
    ...    ${user_id} e.g. 12
    ...    for return value it will return only id , email , firstname , last_name and avatar only
    [Arguments]    ${user_id}
    ${headers}    Builtin.Create dictionary    x-api-key=${api.x_api_key}
    RequestsLibrary.Create session    alias=Get session    url=${api.reqres_url}
    ${response}    RequestsLibrary.Get on session
    ...    alias=Get session    
    ...    url=${api.reqres_user_endpoint}${user_id}    
    ...    headers=${headers}    
    ...    expected_status=any
    ${status}    BuiltIn.Set variable    ${response.status_code}
    ${response_json}    Builtin.Set variable    ${response.json()}

    IF    ${status} == 200
        ${data_id}             JSONLibrary.Get Value From Json    ${response_json}    $..data.id
        ${data_email}          JSONLibrary.Get Value From Json    ${response_json}    $..data.email
        ${data_first_name}     JSONLibrary.Get Value From Json    ${response_json}    $..data.first_name
        ${data_last_name}      JSONLibrary.Get Value From Json    ${response_json}    $..data.last_name
        ${data_avatar}         JSONLibrary.Get Value From Json    ${response_json}    $..data.avatar

        ${result}=    BuiltIn.Create Dictionary
        ...    id=${data_id}[0]
        ...    email=${data_email}[0]
        ...    first_name=${data_first_name}[0]
        ...    last_name=${data_last_name}[0]
        ...    avatar=${data_avatar}[0]
        RETURN    ${status}    ${result}
    ELSE
        RETURN    ${status}    ${response.json()}
    END
    

Verify user profile response is eqaul as expected
    [Documentation]    Verify user profile response is eqaul as expected
    ...    ${response_json} can get the data when using this keyword Get user profile success
    ...    ${expected_response} e.g. {'id': 12, 'email': 'rachel.howell@reqres.in', 'first_name': 'Rachel', 'last_name': 'Howell', 'avatar': 'https://reqres.in/img/faces/12-image.jpg'}
    ...    it from test data can see in the "assignment3.yaml" for example
    [Arguments]    ${response_json}    ${expected_response}
    FOR    ${key}    IN    @{expected_response.keys()}
        BuiltIn.Should be equal
        ...    ${response_json}[${key}]
        ...    ${expected_response}[${key}]
    END
