*** Settings ***
Library         RequestsLibrary
Library         Collections
Resource    ../resource/Test_environment.resource
Resource    ../resource/variables.resource

*** Test Cases ***

Create a Cards access
    [Documentation]    Assigns resources and access validity to a collection of cards
    ${header}    Create Dictionary   x-api-key=gv2CLL8by32oXAE4Nwkzx6qE5TL7LKGR6r56w8I1
    ${body}    Create Dictionary
	...    cardExtId=${cardExtId}
    #...    rights=${????}
	...    resourceId=${resourceId}
	...    validFrom=${validFrom}
    ...    validTo=${validTo}
	
	
    ${response}    POST  url=${Rest_server}/v1/cardsAccess    headers=${header}    json=${body}

	Status Should Be    200