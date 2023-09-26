*** Settings ***
Library         RequestsLibrary
Library         Collections
Resource    ../resource/Test_environment.robot
Resource    ../resource/resource.robot


*** Test Cases ***
Create an access code
    [Documentation]    Creates an access code that the user can use to access the resource without needing to use the mobile app, just by typing the access code in the pinpad. 
    ${header}    Create Dictionary   x-api-key=gv2CLL8by32oXAE4Nwkzx6qE5TL7LKGR6r56w8I1
    ${body}    Create Dictionary
    ...    resourceId=${resourceId} 
    ...    validFrom=${validFrom}
    ...    validTo=${validTo}
     
    ${response}    POST  url=${Rest_server}/v1/codes   headers=${header}    json=${body}

    Status Should Be    200

    