*** Settings ***
Library         RequestsLibrary
Library         Collections
Resource    ../resource/Test_environment.resource
Resource    ../resource/variables.resource


*** Test Cases ***

Get resource groups resources

    log    ${query_param}
    [Documentation]    Returns the resources within a specific Resource Group
    ${response}    GET  url=${Rest_server}/v1/resourcegroups/${resourceGroupId}/resources    headers=${header}

    
    Status Should Be    200

    
