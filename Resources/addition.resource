*** Settings ***
Library           AppiumLibrary
Resource          ../Resources/variables.robot

*** Keywords ***
I enter the number 7
    Click Element    id=com.google.android.calculator:id/digit_7

I click on the addition button
    Click Element    id=com.google.android.calculator:id/op_add
I enter the number 8
    Click Element    id=com.google.android.calculator:id/digit_8
I click on the equal button
    Click Element    id=com.google.android.calculator:id/eq