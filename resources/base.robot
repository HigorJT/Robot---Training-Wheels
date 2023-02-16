*** Settings *** 

Resource    helpers.robot

*** Variables *** 
${ANDROID_AUTOMATION_NAME}      UIAutomator2
${ANDROID_DEVICE_NAME}          Pixel 2 API
${ANDROID_APP}                  ${EXECDIR}/app/twp.apk
${ANDROID_PLATFORM_NAME}        Android

*** Keywords *** 
Open Session
    Set Appium Timeout     5
    Open Application       http://localhost:4724/wd/hub
    ...                    automationName=${ANDROID_AUTOMATION_NAME}
    ...                    platformName=${ANDROID_PLATFORM_NAME}
    ...                    deviceName=${ANDROID_DEVICE_NAME}
    ...                    app=${ANDROID_APP}
Close Session
    Capture Page Screenshot
    Close Application

