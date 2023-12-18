*** Settings ***
Library         RequestsLibrary
Library         Collections
Resource    ../resource/Test_environment.resource
Resource    ../resource/variables.resource


*** Test Cases ***

Get cards usage
    
    [Documentation]    Gets the cards usages
    
    Set Log Level    TRACE
    ${response}    GET  url=${Rest_server}/v1/cardsUsage    headers=${header}
    Status Should Be    200


    
 