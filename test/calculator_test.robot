*** Settings ***
Library           AppiumLibrary
resource          ../Resources/variables.robot
Resource          ../Resources/open.robot
Resource          ../Resources/addition.resource
Resource          ../Resources/result.resource


*** Test Cases ***
# Test Open Calculator
#     [Documentation]    Ouvrir l'application calculatrice
#     Open Calculator
#     Sleep    3s
#     Click Element    id=com.google.android.calculator:id/digit_7
#     Click Element    id=com.google.android.calculator:id/op_add
#     Click Element    id=com.google.android.calculator:id/digit_8
#     Click Element    id=com.google.android.calculator:id/eq

#    ${result}    Get Text    id=com.google.android.calculator:id/result_final
#    Log To Console    Le résultat est : ${result}
#     Should Be Equal    ${result}    15

Test1
    when I open the calculator application
    then I enter the number 7
    and I click on the addition button
    then I enter the number 8
    and I click on the equal button
    then I should see the result 15    
