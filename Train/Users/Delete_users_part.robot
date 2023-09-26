*** Settings ***
Library         RequestsLibrary
Library         Collections
Resource    ../resource/Test_environment.robot
Resource    ../resource/Test_users.robot

*** Test Cases ***


DELETE an User
   
   ${header}    Create Dictionary   x-api-key=gv2CLL8by32oXAE4Nwkzx6qE5TL7LKGR6r56w8I1
   ${response}    DELETE  url=https://mobile-access-api.test.bitwardit.com/v1/users${quest}    headers=${header}    
