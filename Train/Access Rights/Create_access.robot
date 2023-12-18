*** Settings ***
Library         RequestsLibrary
Library         Collections
Resource    ../resource/Test_environment.resource
Resource    ../resource/variables.resource

*** Test Cases ***

Create an Access
  [Documentation]    Creates a set of access rights for a resource.
  ${header}    Create Dictionary   x-api-key=gv2CLL8by32oXAE4Nwkzx6qE5TL7LKGR6r56w8I1
  #${lastName}=    Set Variable    
  ${body}    Create Dictionary
	...    email=${user_email}
  #...    username=${username}
  #...    userExtId=${extId}
  ...    firstName=${firstName}
  ...    lastName=${lastName}
  ...    notifyUser=${True}
  ...    resourceId=${resourceId} 
  ...    validFrom=${validFrom}
  ...    validTo=${validTo}
 

  ${response}    POST  url=${Rest_server}/v1/access    headers=${header}    json=${body}

	Status Should Be    200