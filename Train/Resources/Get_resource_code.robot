*** Settings ***
Library         RequestsLibrary
Library         Collections
Resource    ../resource/Test_environment.robot
Resource    ../resource/resource.robot

*** Test Cases ***

Get resource code
  
    [Documentation]    Retrieves a collection of all the access codes for a given resource.     
    ${response}    GET  url=${Rest_server}/v1/resources/${resourceId}/codes   headers=${header} 
    
    Status Should Be    200
  

    

	
    
