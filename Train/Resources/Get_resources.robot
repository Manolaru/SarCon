*** Settings ***
Library         RequestsLibrary
Library         Collections
Resource    ../resource/Test_environment.robot
Resource    ../resource/resource.robot



*** Test Cases ***

Get resources

    log    ${query_param}
    [Documentation]    Retrieves a collection of all the resources in the account. Response is paginated

    ${response}    GET  url=${Rest_server}/v1/resources   headers=${header}

    Status Should Be    200

    Log    ${response.json()}[content][0][resourceId]

    FOR    ${testusers}    IN    @{response.json()}[content]
        Log    ${testusers}[resourceId]
    END
