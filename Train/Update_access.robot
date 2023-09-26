*** Settings ***
Library         RequestsLibrary
Library         Collections
Resource    Test_environment.robot
Resource    Test_resources.robot



*** Test Cases ***

Update access

    ${header}    Create Dictionary   x-api-key=gv2CLL8by32oXAE4Nwkzx6qE5TL7LKGR6r56w8I1
	${body}    Create Dictionary
	...	password=Luna6789
	
    ${response}    PATCH  url=${Rest_server}/v1/access/[accessId]   headers=${header}    json=${body}
	Status Should Be    204


    Log    ${response.json()}[content][0][resourceId]


    FOR    ${testusers}    IN    @{response.json()}[content]
        Log    ${testusers}[resourceId]
    END
