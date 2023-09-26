*** Settings ***
Library         RequestsLibrary
Library         Collections
Resource    ../resource/Test_environment.robot
Resource    ../resource/Test_users.robot


*** Test Cases ***

Get user_access

   ${response}    GET  url=${Rest_server}/v1/users/${new_user_email}/access    headers=${header}
    
    Status Should Be    200

    Log    ${response.json()}[content]

    
