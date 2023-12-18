*** Settings ***
Library         RequestsLibrary
Library         Collections
Resource    ../resource/Test_environment.resource
Resource    ../resource/variables.resource


*** Test Cases ***

Get cards 
    
    [Documentation]    Fetches cards, supports paging.
    
    Set Log Level    TRACE
    ${response}    GET  url=${Rest_server}/v1/cards/${cardExtId}    headers=${header}
    Status Should Be    200


    
 