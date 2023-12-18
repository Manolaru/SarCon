*** Settings ***
Library         RequestsLibrary
Library         Collections
Resource    ../resource/Test_environment.resource
Resource    ../resource/variables.resource

*** Test Cases ***

Adds users to a user group
    [Documentation]    Adds users to a user group
    ${header}    Create Dictionary   x-api-key=gv2CLL8by32oXAE4Nwkzx6qE5TL7LKGR6r56w8I1
	${body}    Create Dictionary
	
   
    ${response}    PATCH  url=${Rest_server}/v1/usergroups/extId/${userGroupextId}/${personExtId} 
   headers=${header}    
	Status Should Be    204

