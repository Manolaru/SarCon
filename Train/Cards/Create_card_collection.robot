*** Settings ***
Library         RequestsLibrary
Library         Collections
Resource    ../resource/Test_environment.resource
Resource    ../resource/variables.resource

*** Test Cases ***

Create a Cards Collection 
    [Documentation]    Assigns a user to a collection of cards.The payload hast to be a JSON element where each element contains the next data
    ${header}    Create Dictionary   x-api-key=gv2CLL8by32oXAE4Nwkzx6qE5TL7LKGR6r56w8I1
    ${body}    Create Dictionary
	...    personExtId=${personExtId}
    ...    cardExtId=${cardExtId}
	...    cardOwnerExtId=${cardOwnerExtId}

	
	
    ${response}    POST  url=${Rest_server}/v1/cardOwner    headers=${header}    json=${body}

	Status Should Be    200