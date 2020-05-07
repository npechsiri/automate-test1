*** Settings ***
Library               AppiumLibrary               run_on_failure=No Operation
Suite Teardown        Remove

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
    Wait Until Keyword Succeeds  5x  2s  Input Text                         com.gov.red.aed:id/edtPhoneLogin               0982233710
    Wait Until Keyword Succeeds  5x  2s  Click Element                      com.gov.red.aed:id/btnConfirmLogin
    Sleep                        20s
    Click Element                com.gov.red.aed:id/btnConfirmOTPLogin
    Sleep                        5s 
Login Invalid number (Wrong Number)
    Wait Until Keyword Succeeds  5x  2s  Input Text                         com.gov.red.aed:id/edtPhoneLogin               0123456789
    Wait Until Keyword Succeeds  5x  2s  Click Element                      com.gov.red.aed:id/btnConfirmLogin
    sleep                        2s  
Login Invalid number (Over Number)
    Wait Until Keyword Succeeds  5x  2s  Input Text                         com.gov.red.aed:id/edtPhoneLogin               0982233712345
    Wait Until Keyword Succeeds  5x  2s  Click Element                      com.gov.red.aed:id/btnConfirmLogin
    sleep                        2s  
Click Login Admin
    Wait Until Keyword Succeeds  5x  2s  Click Element                      com.gov.red.aed:id/btnAdminLogin
    sleep                        3s
    # Wait Until Keyword Succeeds  5x  2s Input Text                        com.gov.red.aed:id/edtUsernameLogin              text
    # Wait Until Keyword Succeeds  5x  2s Input Text                        com.gov.red.aed:id/edtPasswordLogin              text
    # Wait Until Keyword Succeeds  5x  2sClick Element                      com.gov.red.aed:id/btnConfirmLoginAdmin          text
Click Register
    Wait Until Keyword Succeeds  5x  2s  Click Element                      com.gov.red.aed:id/tvRegister
    Wait Until Keyword Succeeds  5x  2s  Click Element                      com.gov.red.aed:id/checkAgreement
    Wait Until Keyword Succeeds  5x  2s  Click Element                      com.gov.red.aed:id/btnConfirmAgreement
    Wait Until Keyword Succeeds  5x  2s  Input Text                         com.gov.red.aed:id/edtPhoneRegister             text          
    Wait Until Keyword Succeeds  5x  2s  Click Element                      com.gov.red.aed:id/btnConfirmRegister
    Sleep                        20s
Remove
    Remove Application      ${package_name}

*** Test Cases  ***
Login Success   
   Open App
   Open Login
   Login Valid number
Login Fail becaue number wrong
   Open App
   Open Login
   Login Invalid number (Wrong Number)
Login Fail because over number
   Open App
   Open Login
   Login Invalid number (Over Number)
Login Admin Success
   Open App
   Open Login
   Click Login Admin
Register Success           
   Open App
   Open Login
   Click Register