*** Settings ***
Library         RequestsLibrary
Library         Collections
Resource    ../resource/Test_environment.robot
Resource    ../resource/resource.robot


*** Test Cases ***

Get resource groups

    [Documentation]    List resource groups of the customer account..
    ${response}    GET  url=${Rest_server}/v1/resourcegroups    headers=${header}
   
    Status Should Be    200

    
