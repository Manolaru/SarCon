*** Settings ***
Library         RequestsLibrary
Library         Collections
Resource    ../resource/Test_environment.resource
Resource    ../resource/variables.resource


*** Test Cases ***

Delete card
   [Documentation]    Deletes card owner by external id.
   ${header}    Create Dictionary   x-api-key=gv2CLL8by32oXAE4Nwkzx6qE5TL7LKGR6r56w8I1
   ${response}    DELETE  url=${Rest_server}/v1/cards/${cardExtId}/    headers=${header}    

   Status Should Be    200

  