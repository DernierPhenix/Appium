*** Settings ***
Library    AppiumLibrary



#Resource    ../Ressources/library.resource
Resource    ../Ressources/keywords.robot

*** Variables ***
#${1}  id=com.google.android.calculator:id/digit_1
${option}  start
${option2}  set_format


*** Test Cases ***
Test APIDemos_Animation
    Given I open the apps
    When View animation
    Then Check animation

Test APIDemos_Chronometer
    Given I open the apps
    When Click view
    And Click chronometer
    And Click select_option    ${option}
    # And Click select_option    ${stop}
    # And Click select_option    ${reset}
    And Click select_option    ${option2}
    # And Click select_option    ${clear_format}
    

Test APIDemos_Seek_Bar
    Given I open the apps
    When Click view
    And Scroll dans view pour atteindre seek bar
    And Mettez la bar à 88