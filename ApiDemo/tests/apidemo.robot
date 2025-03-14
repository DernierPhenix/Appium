*** Settings ***
Library           AppiumLibrary

*** Variables ***
# Definition des capabilities
${REMOTE_URL}    http://127.0.0.1:4723
${PLATFORM_NAME}    Android
${PLATFORM_VERSION}    15
${DEVICE_NAME}    emulator-5554
${APP_PACKAGE}    io.appium.android.apis
${APP_ACTIVITY}    .ApiDemos
${AUTOMATION_NAME}    UiAutomator2

*** Test Cases ***
Test Open Calculator
    [Documentation]    Ouvrir l'application ApiDemo
    Open ApiDemos
    Sleep    3s
    Click Element    XPath=//android.widget.TextView[@content-desc="Views"]
    Click Element    XPath=//android.widget.TextView[@content-desc="Animation"]
    Click Element    XPath=//android.widget.TextView[@content-desc="Push"]
   
   Wait Until Element Is Visible    xpath=//android.widget.TextView[@content-desc="Freedom"]
   ${texte1}    Get Text    xpath=//android.widget.TextView[@content-desc="Freedom"]
    Log To Console    le texte doit être ${texte1}

    Wait Until Element Is Visible    xpath=//android.widget.TextView[@content-desc="is nothing else but"]
    ${texte2}    Get Text    xpath=//android.widget.TextView[@content-desc="is nothing else but"]
    Log To Console    le texte doit être ${texte2}

    Wait Until Element Is Visible    xpath=//android.widget.TextView[@content-desc="a chance to be better."]
    ${texte3}    Get Text    xpath=//android.widget.TextView[@content-desc="a chance to be better."]
    Log To Console    le texte doit être ${texte3}    

    Wait Until Element Is Visible    xpath=//android.widget.TextView[@content-desc="— Albert Camus"]
    ${texte4}    Get Text    xpath=//android.widget.TextView[@content-desc="— Albert Camus"]
    Log To Console    le texte doit être ${texte4}    
*** Keywords ***
# Open ApiDemos
Open ApiDemos
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}    automationName=${AUTOMATION_NAME}
