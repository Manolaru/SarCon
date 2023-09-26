*** Settings ***
Library         RequestsLibrary
Library         Collections
Resource    ../resource/Test_environment.robot
Resource    ../resource/resource.robot


*** Test Cases ***

Get users access summary
   [Documentation]    Retrieves the amount of access rights that the user has. The access rights are grouped by three categories: ● Individual access rights ● By resource group ● By user group

   ${response}    GET  url=${Rest_server}/v1/users/${user_email}/access-summary    headers=${header}
    
   Status Should Be    200

