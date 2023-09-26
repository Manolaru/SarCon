*** Settings ***
Library         RequestsLibrary
Library         Collections
Resource    ../resource/Test_environment.robot
Resource    ../resource/resource.robot

*** Test Cases ***

Create an Access
  [Documentation]    Creates a set of access rights for a resource.
  ${header}    Create Dictionary   x-api-key=gv2CLL8by32oXAE4Nwkzx6qE5TL7LKGR6r56w8I1
  ${body}    Create Dictionary
	...    email=${user_email}
  #  ...    username=${xxx}
  #  ...    userExtId=${xxx}
  #  ...    firstName=${xxx}
  #  ...    lastName=${xxx}
  #  ...    notifyUser=${xxx}
  #  ...    userExtId=${xxx}
  ...    resourceId=${resourceId} 
  ...    validFrom=${validFrom}
  ...    validTo=${validTo}
  #  ...    extId=${xxx}


	
  ${response}    POST  url=${Rest_server}/v1/access    headers=${header}    json=${body}

	Status Should Be    200