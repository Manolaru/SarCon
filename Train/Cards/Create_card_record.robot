*** Settings ***
Library         RequestsLibrary
Library         Collections
Resource    ../resource/Test_environment.resource
Resource    ../resource/variables.resource

*** Test Cases ***

Creates a record
    [Documentation]    Creates a record for a card usage
    ${header}    Create Dictionary   x-api-key=gv2CLL8by32oXAE4Nwkzx6qE5TL7LKGR6r56w8I1
    ${body}    Create Dictionary
	...    locationId=${locationId}
    ...    cardType=${cardType}
	
	
    ${response}    POST  url=${Rest_server}/v1/cardsUsage    headers=${header}    json=${body}

	Status Should Be    200