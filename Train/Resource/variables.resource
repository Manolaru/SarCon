*** Variables ***
# ${new_user_email}    ekaterina.ivanova+exter8998@bitwards.fi
# &{body}   email=${new_user_email}
${user_email}    test2+api7711@bitwards.fi
${extId}    12400
${external_Id}    test2+papi7711@bitwards.fi
${username}    TestPerson
#${user}    test2+api504@bitwards.fi
${firstName}    Alma
${lastName}    Dudin
${passwordByUser}   ${True}
${thirdPartyAuthentication}    ${False}
${validFrom}    2023-09-01T22:00:00
${validTo}    2024-12-05T22:00:00
${resourceId}    00000009C4D9
${codeId}       881676
${resourceName}    Industrial 150823
${resourceGroupExtId}    1246
${resourceGroupId}    ${1272}
${UserGroupId}    371117
${organization}    LeCount
${additionalInfo}   Information about
${streetAddress}    Professorintie
${city}    Turku
${zipCode}    12305
${phoneNumber}    0501235879
${country}    Sweden
${resourceGroupAccessId}    1270
${accessId}        885165
${GroupName}    EstGroups
${description}    For testing something
${scheduleSupported}   ${False}
${query_param}    ?${searching}&${page}&${size}
${page}    page=1
${size}    size=10
${searching}    searchValue=aaa
${fromDate}    2023-09-20T00:00:00
${toDate}    2023-10-15T00:00:00
${resources}    00000009C4D9
${query_par_res_log}    ?resources=${resources}&fromDate=${fromDate}&toDate=${toDate}
${accesses}    ?accesses=${resourceGroupId}&validFrom=${validFrom}&validTo=${validTo}
@{resourceList}    ${resourceId_01}    ${resourceId_02}    ${resourceId_03}
&{resourceId_01}    resourceId=000000017B14    
&{resourceId_02}    resourceId=00000009C4D9
&{resourceId_03}    resourceId=0000000C5460
${ma_validFrom_01}    2023-01-29T22:00:00+000
${ma_validTo_01}      2023-01-30T22:00:00+000
&{ma_access_01}    validFrom=${ma_validFrom_01}    validTo=${ma_validTo_01}
${ma_validFrom_02}    2023-02-02T22:00:00+000
${ma_validTo_02}      2023-02-04T22:00:00+000
&{ma_access_02}    validFrom=${ma_validFrom_02}    validTo=${ma_validTo_02}
@{ma_accesses}    ${ma_access_01}     ${ma_access_02}
&{murga_user_01}    email=test2+api601@bitwards.fi
&{murga_user_02}    email=test2+api602@bitwards.fi
&{murga_user_03}    email=test2+api603@bitwards.fi
@{murga_users}    ${murga_user_01}    ${murga_user_02}    ${murga_user_03}
${murga_validFrom_01}    2023-05-29T12:00:00.000+0000
${murga_validTo_01}      2023-06-10T12:01:00.000+0000
&{murga_access_01}    validFrom=${murga_validFrom_01}    validTo=${murga_validTo_01}
${murga_validFrom_02}    2023-07-01T12:00:00.000+0000
${murga_validTo_02}      2023-09-10T12:01:00.000+0000
&{murga_access_02}    validFrom=${murga_validFrom_02}    validTo=${murga_validTo_02}
@{murga_accesses}    ${murga_access_01}    ${murga_access_02}

### 
#${searchingUser}    searchValue=${user}
#${quest}    ?${searching}&${page}&${size}

#${searchingResourceId}    searchValue=${resourceid}
#${searchingResourceName}    searchValue=${resourcename}
#${searchingUserGroupId}    searchValue=${UserGroupId}










# 
#${murga_email}    ekaterina.ivanova+exter8998@bitwards.fi
#${murga_username}    ekaterina.ivanova+exter553@bitwards.fi
#${murga_userExtId}    ekaterina.ivanova+exter595@bitwards.fi


#*

