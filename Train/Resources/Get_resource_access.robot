*** Settings ***
Library         RequestsLibrary
Library         Collections
Resource    ../resource/Test_environment.resource
Resource    ../resource/variables.resource


*** Test Cases ***

Get resource access 

    [Documentation]    Retrieves a collection of all the access rights attached to this resource.
    ${response}    GET  url=${Rest_server}/v1/resources/${resourceId}/access    headers=${header}
        

    Status Should Be    200

   