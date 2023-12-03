*** Settings ***
Library         RequestsLibrary
Library         Collections
Resource    ../resource/Test_environment.resource
Resource    ../resource/variables.resource


*** Test Cases ***

Create a Resource group Access
  [Documentation]    Creates a set of access rights for a resource group. 
  ${header}    Create Dictionary   x-api-key=gv2CLL8by32oXAE4Nwkzx6qE5TL7LKGR6r56w8I1
  ${body}    Create Dictionary
	
    ...    ${resourceGroupId}
  #  ...    ${resourceGroupExtId}
    ...    email=${user_email}
  #  ...    username=${xxx}
  #  ...    userExtId=${xxx}
  #  ...    firstName=${xxx}
  #  ...    lastName=${xxx}
  #  ...    notifyUser=${xxx}
  ...    validFrom=${validFrom}
  ...    validTo=${validTo}
  #  ...    extId=${xxx}

	
  ${response}    POST  url=${Rest_server}/v1/resource-group-access    headers=${header}    json=${body}

	Status Should Be    200