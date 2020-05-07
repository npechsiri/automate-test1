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
Open Login
    Wait Until Keyword Succeeds  5x  2s  Click Element                      //android.widget.ImageButton[@content-desc="Open navigation drawer"]
    Wait Until Keyword Succeeds  5x  2s  Click Element                      com.gov.red.aed:id/linearSignIn
Login Valid number
    Wait Until Keyword Succeeds  5x  2s     Input Text                         com.gov.red.aed:id/edtPhoneLogin               0982233710
    Click Element                com.gov.red.aed:id/btnConfirmLogin
    Sleep                        20s
    Click Element                com.gov.red.aed:id/btnConfirmOTPLogin
    Sleep                        3s
Click Call 1669
    Wait Until Keyword Succeeds  5x  2s     Click Element               id=com.gov.red.aed:id/tvNumber
    Sleep                        3s
Click QR Code
    Wait Until Keyword Succeeds  5x  2s     Click Element               xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/androidx.drawerlayout.widget.DrawerLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.RelativeLayout/android.widget.RelativeLayout[2]/android.widget.LinearLayout/android.widget.LinearLayout[1]/android.widget.LinearLayout/android.widget.ImageView
    Sleep                        3s
Click Search Pass 
    Wait Until Keyword Succeeds  5x  2s     Click Element               xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/androidx.drawerlayout.widget.DrawerLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.RelativeLayout/android.widget.RelativeLayout[2]/android.widget.LinearLayout/android.widget.LinearLayout[3]/android.widget.LinearLayout/android.widget.ImageView
    Sleep                        3s              
Click Search Hero CPR & Run for Heart
    Click Element               com.gov.red.aed:id/btnFindRunCpr
    Sleep                        13s
Click Search Hero CPR & Run for Heart for Stop Location
    Click Element               com.gov.red.aed:id/btnFindRunCpr
    Sleep                        3s
Click Search Run for Heart
    Click Element               com.gov.red.aed:id/btnFindRun
    Sleep                        13s
Click Search Run for Heart for Stop Location
    Click Element               com.gov.red.aed:id/btnFindRun
    Sleep                        3s
Click Seardch Hero CPR
    Click Element               com.gov.red.aed:id/btnFindCpr
    Sleep                        13s
Click Seardch Hero CPR for Stop Location 
    Click Element               com.gov.red.aed:id/btnFindCpr
    Sleep                        3s
Click Search Again
    Click Element               com.gov.red.aed:id/btnRequestVolunteerAgain
    Sleep                        13s
Click Call 1669 Again
    Click Element               com.gov.red.aed:id/btnDialog1669
Click Cancel Search
    Click Element               com.gov.red.aed:id/btnDialogCancelRequest
    Sleep                        3s
Click Stop Share Location
    Click Element               com.gov.red.aed:id/btnStopLocation
    Sleep                        2s
Click Close Search
    Wait Until Keyword Succeeds  5x  2s     Click Element                com.gov.red.aed:id/btnCloseVolunteer
    Sleep                        2s
# Remove
#     Remove Application      ${package_name}

*** Test Cases ***
Call 1669 Success
    Open App
    Open Login
    Login Valid number
    Click Call 1669
    # Remove
Open QR Code Success
    Open App
    Open Login
    Login Valid number 
    Click QR Code
    # Remove
Search Hero CPR & Run for Heart and Search Again
    Open App
    Open Login 
    Login Valid number
    Click Search Pass
    Click Search Hero CPR & Run for Heart
    Click Search Again
    Click Cancel Search
    # Remove
# Search Hero CPR & Run for Heart Call 1669
#     Open App
#     Open Login
#     Login Valid number
#     Click Search Pass
#     Click Search Hero CPR & Run for Heart
#     Click Call 1669 Again
#     Remove
# Search Hero CPR & Run for Heart Stop Share Location
#     Open App
#     Open Login
#     Login Valid number
#     Click Search Pass
#     Click Search Hero CPR & Run for Heart for Stop Location
#     Click Stop Share Location
#     Remove
# Search Run for Heart and Search Again 
#     Open App
#     Open Login
#     Login Valid number
#     Click Search Pass
#     Click Search Run for Heart
#     Click Search Again
#     Click Cancel Search
#     Remove
# Search Run for Heart Call 1669
#     Open App
#     Open Login
#     Login Valid number
#     Click Search Pass
#     Click Search Run for Heart
#     Click Call 1669 Again
#     Remove
# Search Run for Heart Stop Share Location
#     Open App
#     Open Login
#     Login Valid number
#     Click Search Pass
#     Click Search Run for Heart for Stop Location
#     Click Stop Share Location
#     Remove
# Search Hero CPR and Search Again
#     Open App
#     Open Login
#     Login Valid number
#     Click Search Pass
#     Click Seardch Hero CPR
#     Click Search Again
#     Click Cancel Search
#     Remove
# Search Hero CPR Call 1669
#     Open App
#     Open Login
#     Login Valid number
#     Click Search Pass
#     Click Seardch Hero CPR
#     Click Call 1669 Again
#     Remove
# Search Hero CPR Stop Share Location
#     Open App
#     Open Login
#     Login Valid number
#     Click Search Pass
#     Click Seardch Hero CPR for Stop Location 
#     Click Stop Share Location
#     Remove
# Close Search Success
#     Open App
#     Open Login
#     Login Valid number
#     Click Search Pass
#     Click Close Search