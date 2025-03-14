*** Settings ***
Library           AppiumLibrary
Resource          ../Resources/variables.robot

*** Keywords ***

# Open Calculator
#     Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}    automationName=${AUTOMATION_NAME}