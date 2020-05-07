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
Click Visitor
    Click Element       //div[@class='v-list__tile__title'][contains(text(),'Visitor')]
    Sleep               1s
Add Visitor
    Click Element       //*[@id="main-layout"]/div/main/div/div/div/div/div/div[1]/div[1]/div/div[2]/div[1]/button
    Input Text          //*[@id="main-layout"]/div/main/div/div/div/div/div/div[2]/div/div[2]/div/div/div[1]/div/form/div[1]/div/div/div[1]/input          nuttapol.pe@inet.co.th
    Input Text          //*[@id="main-layout"]/div/main/div/div/div/div/div/div[2]/div/div[2]/div/div/div[1]/div/form/div[2]/div/div/div[1]/div[1]/input           ณัฐพล เพ็ชรศิริ
    sleep               2s
    Click Element       //body[@class='el-popup-parent--hidden']/div[@class='el-autocomplete-suggestion el-popper']/div[@class='el-scrollbar']/div[1]
    Sleep               2s
    Click Element       //*[@id="main-layout"]/div/main/div/div/div/div/div/div[2]/div/div[2]/div/div/div[1]/div/form/div[3]/div/div/div/input[1]
    Click Element       //div[@class='el-picker-panel__content el-date-range-picker__content is-left']//tr[4]//td[2]//div[1]//span[1]
    Click Element       //div[@class='el-picker-panel__content el-date-range-picker__content is-left']//table[@class='el-date-table']//tbody//tr[@class='el-date-table__row']//td[@class='available']//div//span[contains(text(),'10')]
    Click Element       //span[contains(text(),'OK')]
    Click Element       //*[@id="main-layout"]/div/main/div/div/div/div/div/div[2]/div/div[2]/div/div/div[2]/button[2]
    sleep               2s
Create Visitor
    Click Element       //*[@id="main-layout"]/div/main/div/div/div/div/div/div[1]/div[1]/div/div[2]/div[2]/button
    Input Text          //*[@id="main-layout"]/div/main/div/div/div/div/div/div[3]/div/div[2]/div/div/div[1]/div/form/div[1]/div/div/div/input      1102002116242
    Input Text          //*[@id="main-layout"]/div/main/div/div/div/div/div/div[3]/div/div[2]/div/div/div[1]/div/form/div[2]/div/div/div/input      Nuttapol
    Input Text          //*[@id="main-layout"]/div/main/div/div/div/div/div/div[3]/div/div[2]/div/div/div[1]/div/form/div[3]/div/div/div/input      Pechsiri
    Input Text          //*[@id="main-layout"]/div/main/div/div/div/div/div/div[3]/div/div[2]/div/div/div[1]/div/form/div[4]/div/div/div/input         0982233710
    Input Text          //*[@id="main-layout"]/div/main/div/div/div/div/div/div[3]/div/div[2]/div/div/div[1]/div/form/div[5]/div/div/div/input      INET  
    Input Text          //*[@id="main-layout"]/div/main/div/div/div/div/div/div[3]/div/div[2]/div/div/div[1]/div/form/div[6]/div/div/div/input      nuttapol.pe@inet.co.th
    Input Text          //*[@id="main-layout"]/div/main/div/div/div/div/div/div[3]/div/div[2]/div/div/div[1]/div/form/div[7]/div/div/div/div/input      ณัฐพล เพ็ชรศิริ
    sleep               2s
    Press Keys          tag=body  \\40
    Click Element       //*[@id="main-layout"]/div/main/div/div/div/div/div/div[3]/div/div[2]/div/div/div[1]/div/form/div[8]/div/div/div/input[1]
    Click Element       //div[@class='el-picker-panel__content el-date-range-picker__content is-left']//table[@class='el-date-table']//tbody//tr[@class='el-date-table__row']//td[@class='available']//div//span[contains(text(),'20')]
    Click Element       //div[@class='el-picker-panel__content el-date-range-picker__content is-left']//tr[6]//td[2]//div[1]
    Click Element       //button[@class='el-button el-picker-panel__link-btn el-button--default el-button--mini is-plain']
    Click Element       //*[@id="main-layout"]/div/main/div/div/div/div/div/div[3]/div/div[2]/div/div/div[1]/div/form/div[9]/div/div/div/div/span/span/i
    sleep               2s
    Click Element           //span[contains(text(),'VISITOR')]
    Click Element       //*[@id="main-layout"]/div/main/div/div/div/div/div/div[3]/div/div[2]/div/div/div[2]/button[2]
    Click Element       //*[@id="main-layout"]/div/main/div/div/div/div/div/div[3]/div/div[2]/div/div/div[1]/div[1]/div/img
    Choose File         //input[@name='file']       /Users/n.pechsiri/desktop/62497s.jpg
    Click Element       //*[@id="main-layout"]/div/main/div/div/div/div/div/div[3]/div/div[2]/div/div/div[2]/button[2]
    sleep               2s
Input Search
    Input Text          //*[@id="main-layout"]/div/main/div/div/div/div/div/div[1]/div[1]/div/div[2]/div[3]/div/input    Sakda
    sleep               2s

**** Test Cases ***
Invite Visitor Success
    Open Web emp.thingsconnext.co.th/login
    Login Success
    Click Visitor
    Add Visitor
Create Visitor Success
    Open Web emp.thingsconnext.co.th/login
    Login Success
    Click Visitor
    Create Visitor
Search Success
    Open Web emp.thingsconnext.co.th/login
    Login Success
    Click Visitor
    Input Search


    

    
