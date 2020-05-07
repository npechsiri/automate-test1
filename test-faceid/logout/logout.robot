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
Click Logout
     Click Element      //*[@id="main-layout"]/div/aside/div[8]/div/a/div[2]
     Click Element      //button[contains(@class,'el-button el-button--default el-button--small el-button--primary')]
     sleep              2s

*** Test Cases ***
Logout Success
     Open Web emp.thingsconnext.co.th/login
     Login Success 
     Click Logout