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
Click Logs
     Click Element      //*[@id="main-layout"]/div/aside/div[5]/div/a/div[2]
     Click Element      //*[@id="main-layout"]/div/main/div/div/div/div/div/div[1]/div[1]/div/div[2]/div[1]/button
     Click Element      //*[@id="main-layout"]/div/main/div/div/div/div/div/div[2]/div/div[2]/div/div/div[1]/div/form[2]/div[1]/div/div/input[1]
     Click Element      //td[@class='available today']//span[contains(text(),'9')]
     Click Element      //td[@class='available today in-range start-date end-date']//span[contains(text(),'9')]
     Click Element      //*[@id="main-layout"]/div/main/div/div/div/div/div/div[2]/div/div[2]/div/div/div[1]/div/form[2]/div[2]/div/div/div[1]/input
     sleep              2s
     Press Keys          tag=body         \\40     
    #  Set Focus To Element       //body[@class='el-popup-parent--hidden']/div[@class='el-select-dropdown el-popper']/div[@class='el-scrollbar']/div[@class='el-select-dropdown__wrap el-scrollbar__wrap el-scrollbar__wrap--hidden-default']/ul[@class='el-scrollbar__view el-select-dropdown__list']/li[1]
     Click Element      //*[@id="main-layout"]/div/main/div/div/div/div/div/div[2]/div/div[2]/div/div/div[1]/div/form[2]/div[3]/div/div/div/span/span/i
     Click Element      //div[5]//li[1] 
    #  Press Keys          tag=body         \\40
     #Click Element      //body[@class='el-popup-parent--hidden']/div[@class='el-select-dropdown el-popper']/div[@class='el-scrollbar']/div[@class='el-select-dropdown__wrap el-scrollbar__wrap']/ul[@class='el-scrollbar__view el-select-dropdown__list']/li[2]
     #Press Keys          tag=body         \\13
     Input Text         //*[@id="main-layout"]/div/main/div/div/div/div/div/div[2]/div/div[2]/div/div/div[1]/div/form[2]/div[4]/div/div/div/input   Nuttapol Pechsiri
     sleep              2s
     Press Keys          tag=body         \\40
     sleep              2s
     Click Button       //*[@id="main-layout"]/div/main/div/div/div/div/div/div[2]/div/div[2]/div/div/div[2]/button[1]
     Handle Alert                    timeout=10s
     sleep             2s
Click Filter
    Click Element       //*[@id="main-layout"]/div/aside/div[5]/div/a/div[2]
    Click Element       //*[@id="main-layout"]/div/main/div/div/div/div/div/div[1]/div[1]/div/div[2]/div[2]/button
    Click Element       //*[@id="main-layout"]/div/main/div/div/div/div/div/div[3]/div/div[2]/div/div/div[1]/div/form[2]/div[1]/div/div/input[1]
    Click Element       //td[@class='available']//span[contains(text(),'1')]
    Click Element       //td[@class='available']//span[contains(text(),'6')]
    Click Element       //*[@id="main-layout"]/div/main/div/div/div/div/div/div[3]/div/div[2]/div/div/div[1]/div/form[2]/div[2]/div/div/div[1]/span/span/i
    Press Keys          tag=body         \\40
    Click Element       //*[@id="main-layout"]/div/main/div/div/div/div/div/div[3]/div/div[2]/div/div/div[1]/div/form[2]/div[3]/div/div/div/span/span/i
    Click Element       //div[5]//li[1] 
    Press Keys          tag=body         \\40
    sleep               2s
    Input Text          //div[3]//div[1]//div[2]//div[1]//div[1]//div[1]//div[1]//form[2]//div[4]//div[1]//div[1]//div[1]//input[1]   Nuttapol Pechsiri
    sleep              2s
    Press Keys          tag=body         \\40
    sleep              2s
    Click Button       //div[3]//div[1]//div[2]//div[1]//div[1]//div[2]//button[1]
    Handle Alert                    timeout=10s
    sleep             2s
Input Search
    Click Element       //*[@id="main-layout"]/div/aside/div[5]/div/a/div[2]
    Input Text          //*[@id="main-layout"]/div/main/div/div/div/div/div/div[1]/div[1]/div/div[2]/div[3]/div/input         62311
    sleep               2s
Click Authenticated
    Click Element       //*[@id="main-layout"]/div/aside/div[5]/div/a/div[2]
    Click Element       //*[@id="tab-0"] 
    sleep               2s      
    
Click Unauthenticated
    Click Element       //*[@id="main-layout"]/div/aside/div[5]/div/a/div[2]
    Click Element       //div[@id='tab-1']
    sleep               2s
*** Test Cases ***
# Export Logs Success
#     Open Web emp.thingsconnext.co.th/login
#     Login Success
#     Click Logs
Filter Logs Success
    Open Web emp.thingsconnext.co.th/login
    Login Success
    Click Filter
# Search Success
#     Open Web emp.thingsconnext.co.th/login
#     Login Success
#     Input Search    
# Show Authenticated
#     Open Web emp.thingsconnext.co.th/login
#     Login Success 
#     Click Authenticated   

# Show Unauthenticated
#     Open Web emp.thingsconnext.co.th/login
#     Login Success
#     Click Unauthenticated
