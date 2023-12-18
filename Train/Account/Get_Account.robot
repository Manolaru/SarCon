*** Settings ***
Library         RequestsLibrary
Library         Collections
Resource    ../resource/Test_environment.resource
Resource    ../resource/variables.resource


*** Test Cases ***

Get account access 

    [Documentation]    Fetches the account attached to the API key.
    ${header}    Create Dictionary   x-api-key=gv2CLL8by32oXAE4Nwkzx6qE5TL7LKGR6r56w8I1
    ${response}    GET  url=${Rest_server}/v1/account/current     headers=${header}
        

    Status Should Be    200

   