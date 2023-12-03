*** Settings ***
Library         RequestsLibrary
Library         Collections
Resource    ../resource/Test_environment.resource
Resource    ../resource/variables.resource

*** Test Cases ***

Update an User by extId
    [Documentation]    Updates the user’s details
    ${header}    Create Dictionary   x-api-key=gv2CLL8by32oXAE4Nwkzx6qE5TL7LKGR6r56w8I1
	${body}    Create Dictionary
	
	...	firstName=Marketa
	...	lastName=Horngreen
	...	email=${user_email}
	...	country=${country}
	...	city=${city}
	...	streetAddress=${streetAddress}
	...	zipCode=${zipCode}
	...	phoneNumber=${phoneNumber}
	...	organization=${organization}
	...	additionalInfo=${additionalInfo}
	...	extid=${extid}

   
    ${response}    PATCH  url=${Rest_server}/v1/users/${extid}   headers=${header}    json=${body}
	Status Should Be    204

