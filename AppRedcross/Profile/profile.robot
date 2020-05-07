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
Click Profile
    Wait Until Keyword Succeeds  5x  2s         Click Element                //android.widget.ImageButton[@content-desc="Open navigation drawer"]
    Wait Until Keyword Succeeds  5x  2s         Click Element                com.gov.red.aed:id/svAedLocation
    Sleep                        3s
#     Go Back
#     Sleep                        3s
#     Go Back
Update Profile Picture
    Wait Until Keyword Succeeds  5x  2s         Click Element               com.gov.red.aed:id/btnIntentEditProfile
    Wait Until Keyword Succeeds  5x  2s         Click Element               id=com.gov.red.aed:id/btnSelectImageEdit
    Wait Until Keyword Succeeds  5x  2s         Click Element               id=com.gov.red.aed:id/btnOpenGallery
    # Wait Until Keyword Succeeds  5x  2s         Click Element               id=com.android.permissioncontroller:id/permission_allow_button
    # Wait Until Keyword Succeeds  5x  2s         Click Element               id=com.gov.red.aed:id/btnOpenGallery
    Wait Until Keyword Succeeds  5x  2s         Choose File                 id=com.google.android.apps.photos:id/image
    Wait Until Keyword Succeeds  5x  2s         Click Element               id=Photo taken on Mar 3, 2020 9:27:17 AM
    Wait Until Keyword Succeeds  5x  2s         Click Element               id=com.gov.red.aed:id/btnUpdatePicture

*** Test Cases ***
test
    Open App
    Open Login
    Login Valid number
    Click Profile
    Update Profile Picture