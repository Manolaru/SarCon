*** Settings ***
Library         RequestsLibrary
Library         Collections
Resource    ../resource/Test_environment.robot
Resource    ../resource/resource.robot

*** Test Cases ***

DELETE an User by extId
   [Documentation]    Deletes an user from the system
   ${header}    Create Dictionary   x-api-key=gv2CLL8by32oXAE4Nwkzx6qE5TL7LKGR6r56w8I1
   ${response}    DELETE  url=${Rest_server}/v1/users/${extid}/    headers=${header}    

   Status Should Be    204

   