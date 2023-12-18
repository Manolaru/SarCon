*** Settings ***
Library         RequestsLibrary
Library         Collections
Resource    ../resource/Test_environment.resource
Resource    ../resource/variables.resource


*** Test Cases ***

Get cards owner
    
    [Documentation]    Fetches card owners
    
    Set Log Level    TRACE
    ${response}    GET  url=${Rest_server}Fetches card owners/${query_???}    headers=${header}
    Status Should Be    ???


    
 