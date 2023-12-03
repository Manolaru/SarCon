*** Settings ***
Library         RequestsLibrary
Library         Collections
Resource    ../resource/Test_environment.resource
Resource    ../resource/variables.resource


*** Test Cases ***

Get resource groups

    [Documentation]    List resource groups of the customer account..
    ${response}    GET  url=${Rest_server}/v1/resourcegroups    headers=${header}
   
    Status Should Be    200

    
