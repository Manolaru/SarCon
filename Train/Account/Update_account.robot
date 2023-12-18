*** Settings ***
Library         RequestsLibrary
Library         Collections
Resource    ../resource/Test_environment.resource
Resource    ../resource/variables.resource

*** Test Cases ***

Update the current account.

    [Documentation]   Updates the current account.
    ${header}    Create Dictionary   x-api-key=gv2CLL8by32oXAE4Nwkzx6qE5TL7LKGR6r56w8I1
	${body}    Create Dictionary
	...	accountName=${accountName}
	...	businessId=${businessId}
	...	streetAddress=${streetAddress}
	...	city=${city}
	...	zipCode=${zipCode}
	...	country=${country} 
	...	contactPersonName=${contactPersonName}
	...	contactPersonEmail=${contactPersonEmail}
	...	contactPersonPhone=${contactPersonPhone}
    ...	contactPersonalId=${contactPersonalId}

	   
    ${response}    PATCH  url=${Rest_server}/v1/account/current    headers=${header}    json=${body}
	Status Should Be    200
