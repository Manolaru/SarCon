*** Settings ***
Library         RequestsLibrary
Library         Collections
Resource    ../resource/Test_environment.robot
Resource    ../resource/resource.robot



*** Test Cases ***

Delete an access code
    [Documentation]    Removes the specified code from the resource 
    ${header}    Create Dictionary   x-api-key=gv2CLL8by32oXAE4Nwkzx6qE5TL7LKGR6r56w8I1
    ${body}    Create Dictionary
    
    ${response}     DELETE  url=${Rest_server}/v1/codes/${codeId}   headers=${header}

    Status Should Be    200

    