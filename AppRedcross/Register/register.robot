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
    Open Application    http://localhost:4723/wd/hub   appPackage=${package_name}  app=${APP_LOCATION}   platformName=${PLATFORM_NAME}     platformVersion=${PLATFORM_VERSION}    deviceName=${deviceName}      autoGrantPermissions=true
Open Register
    Wait Until Keyword Succeeds  5x  2s  Click Element                   //android.widget.ImageButton[@content-desc="Open navigation drawer"]
    Wait Until Keyword Succeeds  5x  2s  Click Element                   com.gov.red.aed:id/linearRegister
Register Valid Number
    Wait Until Keyword Succeeds  5x  2s  Click Element                   com.gov.red.aed:id/btnRegister 
    Wait Until Keyword Succeeds  5x  2s  Click Element                   com.gov.red.aed:id/checkAgreement
    Wait Until Keyword Succeeds  5x  2s  Click Element                   com.gov.red.aed:id/btnConfirmAgreement
    Wait Until Keyword Succeeds  5x  2s  Input Text                      com.gov.red.aed:id/edtPhoneRegister             0982233710
    Wait Until Keyword Succeeds  5x  2s  Click Element                   com.gov.red.aed:id/btnConfirmRegister
    Sleep                            2s
Register Invalid Number (Wrong Number)
    Wait Until Keyword Succeeds  5x  2s  Click Element                   com.gov.red.aed:id/btnRegister 
    Wait Until Keyword Succeeds  5x  2s  Click Element                   com.gov.red.aed:id/checkAgreement
    Wait Until Keyword Succeeds  5x  2s  Click Element                   com.gov.red.aed:id/btnConfirmAgreement
    Wait Until Keyword Succeeds  5x  2s  Input Text                      com.gov.red.aed:id/edtPhoneRegister             38472983323
    Wait Until Keyword Succeeds  5x  2s  Click Element                   com.gov.red.aed:id/btnConfirmRegister
    Sleep                            4s
Register Invalid Number (Over Number)
    Wait Until Keyword Succeeds  5x  2s  Click Element                   com.gov.red.aed:id/btnRegister 
    Wait Until Keyword Succeeds  5x  2s  Click Element                   com.gov.red.aed:id/checkAgreement
    Wait Until Keyword Succeeds  5x  2s  Click Element                   com.gov.red.aed:id/btnConfirmAgreement
    Wait Until Keyword Succeeds  5x  2s  Input Text                      com.gov.red.aed:id/edtPhoneRegister             09822337101234
    Wait Until Keyword Succeeds  5x  2s  Click Element                   com.gov.red.aed:id/btnConfirmRegister
    Sleep                            4s
Register Invalid Number (Text)
    Wait Until Keyword Succeeds  5x  2s  Click Element                   com.gov.red.aed:id/btnRegister 
    Wait Until Keyword Succeeds  5x  2s  Click Element                   com.gov.red.aed:id/checkAgreement
    Wait Until Keyword Succeeds  5x  2s  Click Element                   com.gov.red.aed:id/btnConfirmAgreement
    Wait Until Keyword Succeeds  5x  2s  Input Text                      com.gov.red.aed:id/edtPhoneRegister             NUTAPOL
    Wait Until Keyword Succeeds  5x  2s  Click Element                   com.gov.red.aed:id/btnConfirmRegister
    Sleep                            4s
Remove
    Remove Application      ${package_name}


*** Test Cases  ***
Register Success   
   Open App
   Open Register
   Register Valid Number
   Remove
Register fail because Wrong Number              #testcasepass????
   Open App
   Open Register
   Register Invalid Number (Wrong Number)
   Remove
Register fail becuase Over Number               #working
   Open App
   Open Register
   Register Invalid Number (Over Number)
   Remove
Register fail because Input Text                  #testcaepass???
   Open App
   Open Register
   Register Invalid Number (Text)
   Remove