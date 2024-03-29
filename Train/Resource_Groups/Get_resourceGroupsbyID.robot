*** Settings ***
Library         RequestsLibrary
Library         Collections
Resource    ../resource/Test_environment.resource
Resource    ../resource/variables.resource


*** Test Cases ***

Get resource groups resources by id

    [Documentation]    Gets a specific resource group selected by its id
    ${response}    GET  url=${Rest_server}/v1/resourcegroups/${resourceGroupId}    headers=${header}

    Status Should Be    200
   
   