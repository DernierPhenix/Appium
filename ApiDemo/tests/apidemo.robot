*** Settings ***
Library           AppiumLibrary
Resource          ../Resources/keywords.resource



*** Test Cases ***
Test selectionner_element_spinner

# Scenario: Sélectionner un élément dans le Spinner et récupérer des textes
    Given the ApiDemo application is open
    When I click on "Views"
    And I click on "Animation"
    And I click on "Push"
    And I click on the Spinner
    And I select the "Hyperspace" item in the Spinner list
    Then the text "Freedom" should be visible
    And I retrieve the different texts
  

Test calculatrice
     [Documentation]    Ouvrir l'application ApiDemo
    Open ApiDemos
    Sleep    3s
    Click Element    XPath=//android.widget.TextView[@content-desc="Views"]
    Click Element    xpath=//android.widget.TextView[@content-desc="Chronometer"]
    Click Element    id=io.appium.android.apis:id/start
    Sleep    5s
    ${recup_time}    Get Text    id=io.appium.android.apis:id/chronometer
    Log To Console    le temps est ${recup_time}
    Click Element    xpath=//android.widget.Button[@content-desc="Set format string"]
    Sleep    5s
    ${recup_time_set_format}    Get Text    id=io.appium.android.apis:id/chronometer
    Log To Console    le temps est ${recup_time_set_format}

    Run Keyword If    '${recup_time}' != '${recup_time_set_format}'    
    ...    Log To Console    le temps au démarrage du chrono était ${recup_time} et le temps après le changement de format est ${recup_time_set_format}
    

    # Click Element    xpath=//android.widget.Button[@content-desc="Clear format string"]

F
    Given the ApiDemo application is open
    When I click on "Views"
    And I click on "Chronometer"
    Then I click on the "Start" button
    And I retrieve the current time from the chronometer
    And I log the time as "The time is ${chrono_depart}"
    When I click on "Set format string"
    Then I retrieve the time after changing format from the chronometer
    And I log the time as "The time is ${chrono_fin}"
    And I compare the time before and after the format change
    


Test seek_88
     [Documentation]    Ouvrir l'application ApiDemo
    Open ApiDemos
    Sleep    3s
    Click Element    XPath=//android.widget.TextView[@content-desc="Views"]
    Swipe    start_x=100    start_y=1700    offset_x=0    offset_y=-100
    
    Wait Until Element Is Visible    xpath=//android.widget.TextView[@content-desc="Seek Bar"]
    Click Element    xpath=//android.widget.TextView[@content-desc="Seek Bar"]

    Click Element    id=io.appium.android.apis:id/seek
    Input Text    id=io.appium.android.apis:id/seek    88
    




*** Keywords ***
# Open ApiDemos
Open ApiDemos
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}    automationName=${AUTOMATION_NAME}

