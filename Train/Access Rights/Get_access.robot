*** Settings ***
Library         RequestsLibrary
Library         Collections
Resource    ../resource/Test_environment.robot
Resource    ../resource/resource.robot


*** Test Cases ***

Get accesses
    [Documentation]    Get access right details using the accessId attribute.
    ${response}    GET  url=${Rest_server}/v1/access/${accessId}   headers=${header}

    Status Should Be    200