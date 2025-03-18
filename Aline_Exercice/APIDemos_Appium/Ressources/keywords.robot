*** Settings ***
Library    AppiumLibrary

#Library    Browser
#Variables    variables.robot

Resource    ../Ressources/variables.robot


*** Keywords ***
I open the apps
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}    automationName=${AUTOMATION_NAME}

Click view
    Click Element    ${views}
View animation
    Click view
    Click Element    ${animation}
    Click Element    ${push}
    Click Element    ${push_up}
    Sleep    3s
    Click Element    ${hyperspace}

Check animation
    #Element Text Should Be    ${result_animation}    Freedom
    ${resultat_anim_obtenu}   Get Text   ${result_animation} 
    Log To Console    Le résultat affiché est : ${resultat_anim_obtenu}



Click chronometer
    Click Element    ${chronometer}

Click select_option
    [Arguments]   ${option}
    
    Click Element    ${select_option}${option}
    Sleep  5s
    ${status_text}   Get Text    ${status}
    Log To Console    Le status récupéré : ${status_text}
    #Should Be Equal As Strings    ${status_text}    ${status_text}

Scroll dans view pour atteindre seek bar
    Swipe  start_x=100   start_y=1700    offset_x=0  offset_y=-100 
    Wait Until Element Is Visible    ${seek_bar}    timeout=20s
    Click Element    ${seek_bar}

Mettez la bar à 88
    Input Text   ${slide}    88