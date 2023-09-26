*** Settings ***
Library         RequestsLibrary
Library         Collections
Resource    ../resource/Test_environment.robot
Resource    ../resource/resource.robot

*** Test Cases ***

Update an User by extId
    [Documentation]    Updates the user’s details
    ${header}    Create Dictionary   x-api-key=gv2CLL8by32oXAE4Nwkzx6qE5TL7LKGR6r56w8I1
	${body}    Create Dictionary
	...	email=${user}
	...	firstName=Ellina
	...	lastName=Dahlgreen
	...	organization=ABB
	...	additionalInfo=Notes
	...	streetAddress=Ekdahl 18698
	...	city=Cannes
	...	zipCode=09030
	...	phoneNumber=0505913492
	
   #${response}    PATCH  url= https://mobile-access-api.test.bitwardit.com/v1/users/ekaterina.ivanova+exter757@bitwards.fi    headers=${header}	json=${body}    
    ${response}    PATCH  url=${Rest_server}/v1/users/${extid}   headers=${header}    json=${body}
	Status Should Be    204

	#GET  url=${Rest_server}/v1/users/${new_user_email}/access  