*** Settings ***
Library         RequestsLibrary
Library         Collections
Resource    ../resource/Test_environment.resource
Resource    ../resource/variables.resource


*** Test Cases ***

Get cards access
    
    [Documentation]    Fetches the card access rights
    
    Set Log Level    TRACE
    ${response}    GET  url=${Rest_server} /v1/cardsAccess/${query_???}    headers=${header}
    Status Should Be    ???


    
 