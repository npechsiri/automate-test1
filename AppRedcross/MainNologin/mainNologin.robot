*** Settings ***
Library               AppiumLibrary               run_on_failure=No Operation
# Suite Teardown        Remove

*** Variables ***
${appium_host}          http://localhost:4723/wd/hub
${PLATFORM_NAME}        Android
${PLATFORM_VERSION}     10.0
${deviceName}           emulator-5554
${package_name}         com.gov.red.aed
${APP_LOCATION}         /Users/n.pechsiri/Documents/Work/Application-Test/app-debug.apk

*** Keywords ***
Open App 
    Open Application             http://localhost:4723/wd/hub   appPackage=${package_name}  app=${APP_LOCATION}   platformName=${PLATFORM_NAME}     platformVersion=${PLATFORM_VERSION}    deviceName=${deviceName}      autoGrantPermissions=true
    sleep                        5s
Click Call 1669
    Wait Until Keyword Succeeds  5x  2s     Click Element               id=com.gov.red.aed:id/tvNumber
    Sleep                       5s
Click QR Code
    Wait Until Keyword Succeeds  5x  2s     Click Element               xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/androidx.drawerlayout.widget.DrawerLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.RelativeLayout/android.widget.RelativeLayout[2]/android.widget.LinearLayout/android.widget.LinearLayout[1]/android.widget.LinearLayout/android.widget.ImageView
    Sleep                        2s
    # Wait Until Keyword Succeeds  5x  2s     Click Element               id=com.android.permissioncontroller:id/permission_allow_button
Click Search Pass 
    Wait Until Keyword Succeeds  5x  2s     Click Element               xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/androidx.drawerlayout.widget.DrawerLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.RelativeLayout/android.widget.RelativeLayout[2]/android.widget.LinearLayout/android.widget.LinearLayout[3]/android.widget.LinearLayout/android.widget.ImageView
    Wait Until Keyword Succeeds  5x  2s     Click Element               com.gov.red.aed:id/btnIntentLogin
    Sleep                        3s
Login Valid number
    Wait Until Keyword Succeeds  5x  2s     Input Text                         com.gov.red.aed:id/edtPhoneLogin               0982233710
    Wait Until Keyword Succeeds  5x  2s     Click Element                      com.gov.red.aed:id/btnConfirmLogin
    Sleep                        20s
    Wait Until Keyword Succeeds  5x  2s     Click Element                com.gov.red.aed:id/btnConfirmOTPLogin
    Sleep                        5s
Click Search Pass Again
    Wait Until Keyword Succeeds  5x  2s     Click Element               xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/androidx.drawerlayout.widget.DrawerLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.RelativeLayout/android.widget.RelativeLayout[2]/android.widget.LinearLayout/android.widget.LinearLayout[3]/android.widget.LinearLayout/android.widget.ImageView
    Sleep                        3s
Click Search Fail
    Wait Until Keyword Succeeds  5x  2s     Click Element               xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/androidx.drawerlayout.widget.DrawerLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.RelativeLayout/android.widget.RelativeLayout[2]/android.widget.LinearLayout/android.widget.LinearLayout[3]/android.widget.LinearLayout/android.widget.ImageView
    Wait Until Keyword Succeeds  5x  2s     Click Element               com.gov.red.aed:id/btnCancelLogin
    Sleep                        2s
Remove
    Remove Application      ${package_name}



*** Test Cases ***
# Call 1669 Success
#     Open App
#     Click Call 1669
#     # Remove
# Open QR Code Success
#     Open App 
#     Click QR Code
#     # Remove
Show Search Success
    Open App 
    Click Search Pass 
    Login Valid number
    Click Search Pass Again
    # Remove
Open Search Fail
    Open App
    Click Search Fail
    # Remove