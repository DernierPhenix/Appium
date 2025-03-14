*** Settings ***
Library           AppiumLibrary


*** Keywords ***
I should see the result 15   
    ${result}    Get Text    id=com.google.android.calculator:id/result_final
    Log To Console    Le résultat est : ${result}
    Should Be Equal    ${result}    15