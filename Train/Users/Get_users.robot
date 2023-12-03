*** Settings ***
Library         RequestsLibrary
Library         Collections
Resource    ../resource/Test_environment.resource
Resource    ../resource/variables.resource


*** Test Cases ***
Get users
    [Documentation]    Creates an user
    ${response}    GET  url=${Rest_server}/v1/users    headers=${header}

    Status Should Be    200

    
