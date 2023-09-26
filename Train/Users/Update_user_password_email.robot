*** Settings ***
Library         RequestsLibrary
Library         Collections
Resource    ../resource/Test_environment.robot
Resource    ../resource/resource.robot


*** Test Cases ***

Update an User by email
    [Documentation]    Updates the user password
	${header}    Create Dictionary   x-api-key=gv2CLL8by32oXAE4Nwkzx6qE5TL7LKGR6r56w8I1
	${body}    Create Dictionary
	...	password=Luna6789
	
    ${response}    PATCH  url=${Rest_server}/v1/users/${user_email}/password   headers=${header}    json=${body}
	Status Should Be    204
	
	