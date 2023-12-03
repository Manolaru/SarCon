*** Settings ***
Library         RequestsLibrary
Library         Collections
Resource    ../resource/Test_environment.resource
Resource    ../resource/variables.resource

*** Test Cases ***

Update an Users password by extId
    [Documentation]    Updates the user password
	${header}    Create Dictionary   x-api-key=gv2CLL8by32oXAE4Nwkzx6qE5TL7LKGR6r56w8I1
	${body}    Create Dictionary
	...	password=Frukt777
	
    ${response}    PATCH  url=${Rest_server}/v1/users/${extid}/password   headers=${header}    json=${body}
	Status Should Be    204
	
	