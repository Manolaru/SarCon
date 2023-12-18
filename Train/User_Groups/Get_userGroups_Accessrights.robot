*** Settings ***
Library         RequestsLibrary
Library         Collections
Resource    ../resource/Test_environment.resource
Resource    ../resource/variables.resource


*** Test Cases ***

Get users groups access rights
    
    [Documentation]    List the user group´s access Rights associated to a given user group 
    ${response}    GET  url=${Rest_server}/v1/usergroups/${UserGroupId}/accessrights    headers=${header}

    Status Should Be    200
   
   


   