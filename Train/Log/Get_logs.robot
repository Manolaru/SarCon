*** Settings ***
Library         RequestsLibrary
Library         Collections
Resource    ../resource/Test_environment.resource
Resource    ../resource/variables.resource


*** Test Cases ***

Get resource access 
    
    [Documentation]    Retrieves the logs of a set of resources
    
    Set Log Level    TRACE
    ${response}    GET  url=${Rest_server}/v1/logs${query_par_res_log}    headers=${header}
    Status Should Be    200



    
 