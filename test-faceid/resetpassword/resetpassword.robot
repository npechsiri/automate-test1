*** Settings ***
Library         Selenium2Library 
Test Teardown   Close All Browsers


*** Variables ***
${Browsers}         chrome
${url}              https://emp.thingsconnext.co.th/login
${user}             sqa2.ad
${password}         hellosqa2ad 

*** Keywords ***
Open Web emp.thingsconnext.co.th/login
    Set Selenium speed     0.25    
    Selenium2Library.Open Browser    ${url}     ${Browsers}
    Maximize Browser Window
Login Success 
     Input Text         //*[@id="app"]/div/div/div/div/div/div[2]/div/form/div[1]/div/div[1]/input       ${user} 
     Input Text         //*[@id="app"]/div/div/div/div/div/div[2]/div/form/div[2]/div/div[1]/input       ${password} 
     Click Button       //*[@id="app"]/div/div/div/div/div/div[2]/div/button
     sleep              2s
Click Reset Password
    Click Element       //*[@id="main-layout"]/div/aside/div[7]/div/a/div[2]
Reset Password
    Input Text          //*[@id="main-layout"]/div/main/div/div/div/div/div/div/div[2]/div/div/div/form/div[1]/div/div/input        hellosqa2ad
    Input Text          //*[@id="main-layout"]/div/main/div/div/div/div/div/div/div[2]/div/div/div/form/div[2]/div/div/input        hellosqa3ad
    Input Text          //*[@id="main-layout"]/div/main/div/div/div/div/div/div/div[2]/div/div/div/form/div[3]/div/div/input        hellosqa3ad
Show Password
    Click Element       //*[@id="main-layout"]/div/main/div/div/div/div/div/div/div[2]/div/div/div/form/div[1]/div/div/span/span/i
    Click Element       //*[@id="main-layout"]/div/main/div/div/div/div/div/div/div[2]/div/div/div/form/div[2]/div/div/span/span/i
    Click Element       //*[@id="main-layout"]/div/main/div/div/div/div/div/div/div[2]/div/div/div/form/div[3]/div/div/span/span/i
*** Test Cases ***
Reset Password Success
    Open Web emp.thingsconnext.co.th/login
    Login Success 
    Click Reset Password
    Reset Password
Show Password Success
    Open Web emp.thingsconnext.co.th/login
    Login Success 
    Click Reset Password
    Reset Password
    Show Password