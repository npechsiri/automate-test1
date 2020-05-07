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
Add Admin Success
     Click Element      //*[@id="main-layout"]/div/aside/div[6]/div/a/div[2]
     Click Element      //*[@id="main-layout"]/div/main/div/div/div/div/div/div[1]/div[1]/div/div[2]/div[1]/button
     Input Text         //*[@id="main-layout"]/div/main/div/div/div/div/div/div[2]/div/div[2]/div/div/div[1]/div/form[1]/div[1]/div/div/div[1]/input    Nuttapol
     Input Text         //*[@id="main-layout"]/div/main/div/div/div/div/div/div[2]/div/div[2]/div/div/div[1]/div/form[1]/div[2]/div/div/div[1]/input    Pechsiri
     Input Text         //*[@id="main-layout"]/div/main/div/div/div/div/div/div[2]/div/div[2]/div/div/div[1]/div/form[1]/div[3]/div/div/div[1]/input    nuttapol.pe@inet.co.th
     Input Text         //*[@id="main-layout"]/div/main/div/div/div/div/div/div[2]/div/div[2]/div/div/div[1]/div/form[1]/div[4]/div/div/div[1]/input    0982233710   
     Click Element      //*[@id="main-layout"]/div/main/div/div/div/div/div/div[2]/div/div[2]/div/div/div[1]/div/form[1]/div[5]/div/div/div/div/span/span/i  
     sleep              2s
     Click Element      //body[@class='el-popup-parent--hidden']/div[@class='el-select-dropdown el-popper']/div[@class='el-scrollbar']/div[@class='el-select-dropdown__wrap el-scrollbar__wrap el-scrollbar__wrap--hidden-default']/ul[@class='el-scrollbar__view el-select-dropdown__list']/li[@class='el-select-dropdown__item']/span[1]
     Click Element      //*[@id="main-layout"]/div/main/div/div/div/div/div/div[2]/div/div[2]/div/div/div[2]/button[1]
     Handle Alert                    timeout=10s
     sleep              2s
Input Search
     Click Element      //*[@id="main-layout"]/div/aside/div[6]/div/a/div[2]
     Input Text         //*[@id="main-layout"]/div/main/div/div/div/div/div/div[1]/div[1]/div/div[2]/div[2]/div/input   sqa2@inet.co.th
     sleep              2s


*** Test Cases ***
Add Admin Success
    Open Web emp.thingsconnext.co.th/login
    Login Success 
    Add Admin Success
Search Success
    Open Web emp.thingsconnext.co.th/login
    Login Success 
    Input Search
    