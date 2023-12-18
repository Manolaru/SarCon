*** Settings ***
Library         RequestsLibrary
Library         Collections
Resource    ../resource/Test_environment.resource
Resource    ../resource/variables.resource


*** Test Cases ***

Get schedule
    
    [Documentation]    Returns the schedules in the account
    ${response}    GET  url=${Rest_server}/v1/schedule    headers=${header}

    Status Should Be    200

    
