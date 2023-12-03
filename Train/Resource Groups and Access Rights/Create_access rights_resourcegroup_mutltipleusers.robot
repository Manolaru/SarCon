*** Settings ***
Library         RequestsLibrary
Library         Collections
Resource    ../resource/Test_environment.resource
Resource    ../resource/variables.resource


*** Test Cases ***

Create a multiple-user Resource group Access
  [Documentation]    Creates access rights for multiple users for a single resource group.   
  ${header}    Create Dictionary   x-api-key=gv2CLL8by32oXAE4Nwkzx6qE5TL7LKGR6r56w8I1
  ${body}    Create Dictionary
	...  users=${murga_users}
  ...  notifyUser=${True}
  ...  resourceGroupId=${resourceGroupId}
  ...  accesses=${murga_accesses}
	
  ${response}    POST  url=${Rest_server}/v1/multiple-user-resource-group-access    headers=${header}    json=${body}

	Status Should Be    200