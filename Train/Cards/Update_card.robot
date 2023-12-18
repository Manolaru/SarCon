*** Settings ***
Library         RequestsLibrary
Library         Collections
Resource    ../resource/Test_environment.resource
Resource    ../resource/variables.resource

*** Test Cases ***

Updates the validity for a collection of cards.
    [Documentation]    Updates the validity for a collection of cards.
    ${header}    Create Dictionary   x-api-key=gv2CLL8by32oXAE4Nwkzx6qE5TL7LKGR6r56w8I1
	${body}    Create Dictionary
	...    extId=${cardExtId}
    ...    validFrom=${newvalidFrom}
	...    validTo=${newvalidTo}
	
	   
    ${response}    PATCH  url=${Rest_server}/v1/cards/${cardExtId}
    headers=${header}    json=${body}
	Status Should Be    200
