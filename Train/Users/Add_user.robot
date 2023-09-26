*** Settings ***
Library         RequestsLibrary
Library         Collections
Resource    ../resource/Test_environment.robot
Resource    ../resource/resource.robot

*** Test Cases ***

Create an User
    [Documentation]    Creates an user
    ${header}    Create Dictionary   x-api-key=gv2CLL8by32oXAE4Nwkzx6qE5TL7LKGR6r56w8I1
    ${body}    Create Dictionary
	...	email=${user_email}
    ...	extid=${user_email}
    ...	firstName=Eleonora
	...	lastName=Dahlgreen
	...	organization=Stora Enso
	...	additionalInfo=Notes
	...	streetAddress=Ekdahl 18698
	...	city=Cannes
	...	zipCode=09030
	...	phoneNumber=0505913492
	
    ${response}    POST  url=${Rest_server}/v1/users/    headers=${header}    json=${body}

	Status Should Be    200