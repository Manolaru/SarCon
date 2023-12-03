*** Settings ***
Library         RequestsLibrary
Library         Collections
Resource    ../resource/Test_environment.resource
Resource    ../resource/variables.resource


*** Test Cases ***

Get locations

    [Documentation]    Retrieves a collection of all the locations in the account. The request/response is paginated.
    ${response}    GET  url=${Rest_server}/v1/locations    headers=${header}

    Status Should Be    200

    