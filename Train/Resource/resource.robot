*** Variables ***
${who}    ekaterina.ivanova+exter8998@bitwards.fi
${new_user_email}    ekaterina.ivanova+exter8998@bitwards.fi
&{body}   email=${new_user_email}
${user_email}    ekaterina.ivanova+exter8998@bitwards.fi
${extId}    ekaterina.ivanova+exter8998@bitwards.fi
${user}    ekaterina.ivanova+exter8998@bitwards.fi
${searchingUser}    searchValue=${user}
${query_param}    ?${searching}&${page}&${size}
${quest}    ?${searching}&${page}&${size}
${country}    Sweden
${resourceId}    00000009C4D9
${resourceName}    Industrial 150823
${resourceGroupId}    1272
${resourceGroupExtId}    1246
${resourceGroupAccessId}    1270
${GroupId}    371117
${searchingResourceId}    searchValue=${resourceid}
${searchingResourceName}    searchValue=${resourcename}
${searchingGroupId}    searchValue=${GroupId}
${page}    page=1
${size}    size=10
${query_param}    ?${searching}&${page}&${size}
${validFrom}    2020-09-01T22:00:00
${validTo}    2023-12-05T22:00:00
${searching}    searchValue=aaa
${accessId}        885165
${codeId}       881676 
${GroupName}    EstGroups
${description}    For testing something
${scheduleSupported}   FALSE
${fromDate}    2023-09-20T00:00:00
${toDate}    2023-10-15T00:00:00
${resources}    00000009C4D9
${query_par_res_log}    ?resources=${resources}&fromDate=${fromDate}&toDate=${toDate}
${accesses}    ?accesses=${resourceGroupId}&validFrom=${validFrom}&validTo=${validTo}
@{resourceList}    ${resourceId_01}    ${resourceId_02}    ${resourceId_03}
&{resourceId_01}    resourceId=000000017B14    
&{resourceId_02}    resourceId=00000009C4D9
&{resourceId_03}    resourceId=0000000C5460
#
#${murga_email}    ekaterina.ivanova+exter8998@bitwards.fi
#${murga_username}    ekaterina.ivanova+exter553@bitwards.fi
#${murga_userExtId}    ekaterina.ivanova+exter595@bitwards.fi
${murga_user_01}    ekaterina.ivanova+exter8998@bitwards.fi
${murga_user_02}    ekaterina.ivanova+exter553@bitwards.fi
${murga_user_03}    ekaterina.ivanova+exter595@bitwards.fi
@{murga_users}    ${murga_user_01}    ${murga_user_02}    ${murga_user_03}
#*
${murga_validFrom_01}    2023-05-29T12:00:00.000+0000
${murga_validTo_01}      2023-06-10T12:01:00.000+0000
&{murga_access_01}    validFrom=${murga_validFrom_01}    validTo=${murga_validTo_01}
${murga_validFrom_02}    2023-07-01T12:00:00.000+0000
${murga_validTo_02}      2023-09-10T12:01:00.000+0000
&{murga_access_02}    validFrom=${murga_validFrom_02}    validTo=${murga_validTo_02}
@{murga_accesses}    ${murga_access_01}    ${murga_access_02}
