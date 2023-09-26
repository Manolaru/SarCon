*** Settings ***
Library         RequestsLibrary
Library         Collections
Resource    Test_environment.robot
Resource    Test_users.robot

#*** Variables ***
#${Access_key}    gv2CLL8by32oXAE4Nwkzx6qE5TL7LKGR6r56w8I1
#${Rest_server}    https://mobile-access-api.test.bitwardit.com
#&{header}   X-Api-Key=${Access_key}

#${who}    ekaterina
#${searching}    searchValue=${who}
#${page}    page=2
#${size}    size=40
#${query_param}    ?${searching}&${page}&${size}


*** Test Cases ***

Get users

    log    ${query_param}

    ${response}    GET  url=${Rest_server}/v1/users    headers=${header}

    #  ${response}    GET  url=${Rest_server}/v1/users${query_param}    headers=${header}
    #${response}    GET  url=${Rest_server}/v1/users?searchValue=ekaterina&page=0&size=40    headers=${header}
    Status Should Be    200

    
