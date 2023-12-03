*** Settings ***
Library         RequestsLibrary
Library         Collections
Resource    ../resource/Test_environment.resource
Resource    ../resource/variables.resource


*** Test Cases ***

Get user groups
    
    [Documentation]    List the user groups of the customer account.The request/response is paginated
    ${response}    GET  url=${Rest_server}/v1/usergroups    headers=${header}

    Status Should Be    200

    
