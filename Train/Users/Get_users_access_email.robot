*** Settings ***
Library         RequestsLibrary
Library         Collections
Resource    ../resource/Test_environment.resource
Resource    ../resource/variables.resource


*** Test Cases ***

Get users access
   [Documentation]    Retrieves a collection of all the access rights for this user
   ${response}    GET  url=${Rest_server}/v1/users/${user_email}/access    headers=${header}
    
   Status Should Be    200

    

