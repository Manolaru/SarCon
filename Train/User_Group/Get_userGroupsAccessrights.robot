*** Settings ***
Library         RequestsLibrary
Library         Collections
Resource    ../resource/Test_environment.robot
Resource    ../resource/resource.robot


*** Test Cases ***

Get users groups access rights
    
    [Documentation]    List the user group´s access Rights associated to a given user group 
    ${response}    GET  url=${Rest_server}/v1/usergroups/${GroupId}/accessrights    headers=${header}

    Status Should Be    200
   
   


   