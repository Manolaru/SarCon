*** Settings ***
Library         RequestsLibrary
Library         Collections
Resource    ../resource/Test_environment.resource
Resource    ../resource/variables.resource

*** Test Cases ***

Create an User
    [Documentation]    Creates an user
    ${header}    Create Dictionary   x-api-key=gv2CLL8by32oXAE4Nwkzx6qE5TL7LKGR6r56w8I1
    ${body}    Create Dictionary
	#...    email=${user_email}
    ...    extId=${personExtId}
    ...    firstName=${firstName}
	...    lastName=${lastName}
	...    passwordByUser=${True}
	...    password=""
	...    thirdPartyAuthentication = ${False}
	
	
    ${response}    POST  url=${Rest_server}/v1/users    headers=${header}    json=${body}

	Status Should Be    200