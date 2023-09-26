*** Settings ***
Library         RequestsLibrary
Library         Collections
Resource    ../resource/Test_environment.robot
Resource    ../resource/resource.robot

*** Test Cases ***
 
Add new user

     ${response}    POST  url=${Rest_server}/v1/users    headers=${header}    json=${body}

    Status Should Be    200

 

Get users

    ${version} =    Evaluate    robot.__version__
    Log    ${query_param}

      ${response}    GET    url=${Rest_server}/v1/users${query_param}    headers=${header}

    Status Should Be    200
 
Update user data

    ${header}    Create Dictionary   x-api-key=gv2CLL8by32oXAE4Nwkzx6qE5TL7LKGR6r56w8I1
	  ${body}    Create Dictionary
	...	email=${who}
	...	firstName=Emma
	...	lastName=Dahl
	...	organization=ABB
	...	additionalInfo=Notes
	...	streetAddress=Ekdahl 18
	...	city=Cannes
	...	zipCode=09030
	...	phoneNumber=0505913492
	
  ${response}    PATCH  url=${Rest_server}/v1/users/${who}   headers=${header}    json=${body}
	Status Should Be    204

Update users password
  ${header}    Create Dictionary   x-api-key=gv2CLL8by32oXAE4Nwkzx6qE5TL7LKGR6r56w8I1
  ${body}    Create Dictionary
	...	password=Luna6789
	
  ${response}    PATCH  url=${Rest_server}/v1/users/${who}/password   headers=${header}    json=${body}
	Status Should Be    204

#Delete user
#  ${header}    Create Dictionary   x-api-key=gv2CLL8by32oXAE4Nwkzx6qE5TL7LKGR6r56w8I1
#  ${response}    DELETE  url=https://mobile-access-api.test.bitwardit.com/v1/users/${who}    headers=${header}    