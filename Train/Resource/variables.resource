*** Variables ***
# ${new_user_email}    ekaterina.ivanova+exter8998@bitwards.fi
# &{body}   email=${new_user_email}
${user_email}    ekaterina.ivanova+exter81212@bitwards.fi
${personExtId}    7894569
#${extId}    testes000
#${external_Id}    ekaterina.ivanova+exter8998@bitwards.fi
${username}    AlmaDudin
#${user}    test2+api504@bitwards.fi
${firstName}    Marika
${lastName}    Nyblin
${passwordByUser}   ${True}
${thirdPartyAuthentication}    ${False}
${validFrom}    2023-10-01T22:00:00
${validTo}    2024-12-05T22:00:00
${resourceId}    00000009C4D9
${codeId}       881676
${resourceName}    Industrial Test23
${resourceGroupExtId}    1246
${resourceGroupId}    ${1274}
${UserGroupId}    371093
${userGroupextId}    testes000
${organization}    LeCount
${additionalInfo}   Information about
${streetAddress}    Professorintie
${city}    Turku
${zipCode}    12305
${phoneNumber}    0501235879
${country}    Norway
${resourceGroupAccessId}    1277
${accessId}        887166
${GroupName}    group024
${description}    For testing something
${scheduleSupported}   ${False}
${query_param}    ?${searching}&${page}&${size}
${page}    page=1
${size}    size=10
${searching}    searchValue=aaa
${fromDate}    2023-10-20T00:00:00
${toDate}    2023-12-15T00:00:00
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
${contactPersonName}    Ivanova, Ekaterina   
${contactPersonEmail}    ekaterina.ivanova@bitwards.fi
${contactPersonPhone}    +35840123456
${contactPersonalId}    123abc
${accountId}    881181
${accountName}    Bitwards test
${businessId}    11111-1
${cardId}    FFFB0 
${locationId}    400
${cardType}    ID_ON_FILE
${cardExtId}    card00012
${cardOwnerExtId}    7894569
${newvalidFrom}    2023-11-01T22:00:00
${newvalidTo}    2024-11-05T22:00:00





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

