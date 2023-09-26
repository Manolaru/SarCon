*** Settings ***
Library         RequestsLibrary
Library         Collections
Resource    ../resource/Test_environment.robot
Resource    ../resource/resource.robot


*** Test Cases ***

Get users access extid
   [Documentation]    Retrieves a collection of all the access rights for this user.
   ${response}    GET  url=${Rest_server}/v1/users/${extid}/access    headers=${header}
   
   Status Should Be    200


