
*** Variables ***

${REMOTE_URL}    http://127.0.0.1:4723
${PLATFORM_NAME}    Android
${PLATFORM_VERSION}    16
${DEVICE_NAME}    emulator-5554
${APP_PACKAGE}    io.appium.android.apis
${APP_ACTIVITY}    .ApiDemos
${AUTOMATION_NAME}    UiAutomator2

${views}    xpath=//android.widget.TextView[@content-desc="Views"]
${animation}    xpath=//android.widget.TextView[@content-desc="Animation"]
${push}     xpath=//android.widget.TextView[@content-desc="Push"]
${push_up}    xpath=//android.widget.TextView[@resource-id="android:id/text1"]
${hyperspace}    xpath=//android.widget.CheckedTextView[@resource-id="android:id/text1" and @text="Hyperspace"]

${result_animation}    id=io.appium.android.apis:id/flipper
#${result_animation}    xpath=//android.widget.TextView[@content-desc="Freedom"]

# Base ID for chronometer elements
${base_id}    id=io.appium.android.apis:id/

# Chronometer elements
${chronometer}    xpath=//android.widget.TextView[@content-desc="Chronometer"]
${start}        ${base_id}start
${stop}        ${base_id}stop
${reset}       ${base_id}reset
${set_format}       ${base_id}set_format
${clear_format}       ${base_id}clear_format
${status}        ${base_id}chronometer

# Select option

${select_option}   ${base_id}

# Seek bar elements
${seek_bar}   xpath=//android.widget.TextView[@content-desc="Seek Bar"]
#${seek_bar}   id=Seek Bar
${slide}   ${base_id}seek

