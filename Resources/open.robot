*** Settings ***
Library           AppiumLibrary

Resource          ../Resources/variables.robot

*** Keywords ***
I open the calculator application
    [Documentation]    Ouvrir l'application calculatrice
        Open Calculator
        Sleep    3s

Open Calculator
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}    automationName=${AUTOMATION_NAME}

