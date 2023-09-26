*** Settings ***
Library         RequestsLibrary
Library         Collections
Resource    ../resource/Test_environment.robot
Resource    ../resource/Test_users.robot
*** Test Cases ***
 
Add new user

     ${response}    POST  url=${Rest_server}/v1/users    headers=${header}    json=${body}

    Status Should Be    200

 

Get users

    ${version} =    Evaluate    robot.__version__
    Log    ${query_param}

      ${response}    GET    url=${Rest_server}/v1/users${query_param}    headers=${header}

    Status Should Be    200
 

    Log    ${response.json()}[content][0][email]


    FOR    ${testusers}    IN    @{response.json()}[content]
        Log    ${testusers}[email]
    END
 
