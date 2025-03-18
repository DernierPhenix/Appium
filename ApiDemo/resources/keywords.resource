*** Settings ***
Library           AppiumLibrary
Resource          ../Resources/variables.resource


*** Variables ***

${recup_time}    None
${recup_time_set_format}    None

*** Keywords ***
the ApiDemo application is open
    [Documentation]    Ouvrir l'application ApiDemo
        Open ApiDemos
        Sleep    3s

I click on "Views"
    [Documentation]    Cliquer sur "Views"
        Click Element    XPath=//android.widget.TextView[@content-desc="Views"]

I click on "Animation"
    [Documentation]    Cliquer sur "Animation"
        Click Element    XPath=//android.widget.TextView[@content-desc="Animation"]

I click on "Push"
    [Documentation]    Cliquer sur "Push"
        Click Element    XPath=//android.widget.TextView[@content-desc="Push"]

I click on the Spinner
    [Documentation]    Cliquer sur le Spinner
        Click Element    xpath=//android.widget.Spinner[@resource-id="io.appium.android.apis:id/spinner"]

I select the "Hyperspace" item in the Spinner list
    [Documentation]    Sélectionner l'élément "Hyperspace" dans la liste du Spinner
        Click Element    xpath=//android.widget.CheckedTextView[@text="Hyperspace"]

the text "Freedom" should be visible
    [Documentation]    Le texte "Freedom" doit être visible
        Wait Until Element Is Visible    xpath=//android.widget.TextView[@content-desc="Freedom"]

I retrieve the different texts
    [Documentation]    Récupérer les différents textes
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
# ----------------------------------------------------------------------------------------------------------------------------

# Feature: Interacting with the ApiDemo application for Chronometer functionality

#   Scenario: Start and check the time on the Chronometer after changing format

I click on "Chronometer"
    [Documentation]    Cliquer sur "Chronometer"
        Click Element    xpath=//android.widget.TextView[@content-desc="Chronometer"]

I click on the "Start" button
    [Documentation]    Cliquer sur le bouton "Start"
        Click Element    id=io.appium.android.apis:id/start


I retrieve the current time from the chronometer
    [Documentation]    Récupérer l'heure actuelle du chronomètre
        ${recup_time}    Get Text     id=io.appium.android.apis:id/chronometer
        Log To Console    le temps est ${recup_time}

   
I click on "Set format string"
    [Documentation]    Cliquer sur "Set format string"
        Click Element    xpath=//android.widget.Button[@content-desc="Set format string"]
        Sleep    5s

I retrieve the time after changing format from the chronometer
    [Documentation]    Récupérer l'heure après le changement de format du chronomètre
        ${recup_time_set_format}    Get Text     id=io.appium.android.apis:id/chronometer
        Log To Console    le temps est ${recup_time_set_format}

I compare the time before and after the format change
    [Documentation]    Comparer l'heure avant et après le changement de format
        Run Keyword If    '${recup_time}' != '${recup_time_set_format}'    
        ...    Log To Console    le temps au démarrage du chrono était ${recup_time} et le temps après le changement de format est ${recup_time_set_format}

