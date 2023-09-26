*** Settings ***
Library         RequestsLibrary
Library         Collections
Resource    ../resource/Test_environment.robot
Resource    ../resource/Test_resources.robot


*** Test Cases ***

Get resource

    log    ${query_param}

   # ${response}    GET  url=${Rest_server}/v1/resources?searchValue=${what}   headers=${header}
    
    
    ${response}    GET  url=${Rest_server}/v1/users?searchValue=0000000DDDAB&page=0&size=40    headers=${header} 
    Status Should Be    200
 
    
