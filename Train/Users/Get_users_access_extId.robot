*** Settings ***
Library         RequestsLibrary
Library         Collections
Resource    ../resource/Test_environment.resource
Resource    ../resource/variables.resource


*** Test Cases ***

Get users access extid
   [Documentation]    Retrieves a collection of all the access rights for this user.
   ${response}    GET  url=${Rest_server}/v1/users/${personExtId}/access    headers=${header}
   
   Status Should Be    200


