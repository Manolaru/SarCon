*** Settings ***
Library         RequestsLibrary
Library         Collections
Resource    ../resource/Test_environment.resource
Resource    ../resource/variables.resource


*** Test Cases ***
Create a resource Group
    [Documentation]    Creates a set of access rights for a resource group.
    ${header}    Create Dictionary   x-api-key=gv2CLL8by32oXAE4Nwkzx6qE5TL7LKGR6r56w8I1
    ${body}    Create Dictionary
	...	name=${GroupName}
    ...	description=${description}
    ...	resourceList=${resourceList}
    ...	scheduleSupported=${False} 
   
	
    ${response}    POST  url=${Rest_server}/v1/resourcegroups     headers=${header}    json=${body}

	Status Should Be    200