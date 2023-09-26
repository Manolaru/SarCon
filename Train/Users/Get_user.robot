*** Settings ***
Library         RequestsLibrary
Library         Collections
Resource    ../resource/Test_environment.robot
Resource    ../resource/Test_users.robot





*** Test Cases ***

Get users

    log    ${query_param}

    ${response}    GET  url=${Rest_server}/v1/users?searchValue=${who}    headers=${header}


    
