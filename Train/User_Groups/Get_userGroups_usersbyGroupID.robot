*** Settings ***
Library         RequestsLibrary
Library         Collections
Resource    ../resource/Test_environment.resource
Resource    ../resource/variables.resource


*** Test Cases ***

Get user groups users by Group Id
    
    [Documentation]    List the users that belong to a given user group. The request/response is paginated
    ${response}    GET  url=${Rest_server}/v1/usergroups/${userGroupId}/users   headers=${header}    

    Status Should Be    200

    
