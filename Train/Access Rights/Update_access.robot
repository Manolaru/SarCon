*** Settings ***
Library         RequestsLibrary
Library         Collections
Resource    ../resource/Test_environment.resource
Resource    ../resource/variables.resource

*** Test Cases ***

Update an Access
    [Documentation]    Updates the access validity time.
    ${header}    Create Dictionary   x-api-key=gv2CLL8by32oXAE4Nwkzx6qE5TL7LKGR6r56w8I1
	${body}    Create Dictionary
	...    validFrom=${validFrom}
    ...    validTo=${validTo}
	
    ${response}    PATCH  url=${Rest_server}/v1/access/${accessId}   headers=${header}    json=${body}
	Status Should Be    200

	