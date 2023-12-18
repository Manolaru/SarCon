*** Settings ***
Library         RequestsLibrary
Library         Collections
Resource    ../resource/Test_environment.resource
Resource    ../resource/variables.resource


*** Test Cases ***
Create a usergroup.

    [Documentation]    Creates a usergroup.
    ${header}    Create Dictionary   x-api-key=gv2CLL8by32oXAE4Nwkzx6qE5TL7LKGR6r56w8I1
    ${body}    Create Dictionary
	...	name=${GroupName}
    #...	description=${description}
    #...	extId=9876
    #...	nfcCardsEnabled=${True} 
   
	
    ${response}    POST  url=${Rest_server}/v1/usergroups     headers=${header}   json=${body}
	Status Should Be    200