*** Settings ***
Library         RequestsLibrary
Library         Collections
Resource    ../resource/Test_environment.robot
Resource    ../resource/resource.robot


*** Test Cases ***

DELETE a resource group
   [Documentation]   Removes the specified resource group.
   ${header}    Create Dictionary   x-api-key=gv2CLL8by32oXAE4Nwkzx6qE5TL7LKGR6r56w8I1
   ${response}    DELETE  url=${Rest_server}/v1/resourcegroups/${resourceGroupId}    headers=${header}    
   
   Status Should Be    204