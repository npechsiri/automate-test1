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
     Input Text      //*[@id="app"]/div/div/div/div/div/div[2]/div/form/div[1]/div/div[1]/input       ${user} 
     Input Text      //*[@id="app"]/div/div/div/div/div/div[2]/div/form/div[2]/div/div[1]/input       ${password} 
     Click Button    //*[@id="app"]/div/div/div/div/div/div[2]/div/button
     
Click Employee
    Click Button        //*[@id="main-layout"]/div/main/div/div/div/div/div/div[1]/div[1]/div/div[2]/div[1]/button
    Input Text          //*[@id="main-layout"]/div/main/div/div/div/div/div/div[3]/div/div[2]/div/div/div[1]/div/form/div[1]/div/div/div/input      12123
    Input Text          //*[@id="main-layout"]/div/main/div/div/div/div/div/div[3]/div/div[2]/div/div/div[1]/div/form/div[2]/div/div/div[1]/input   Prayut
    Input Text          //*[@id="main-layout"]/div/main/div/div/div/div/div/div[3]/div/div[2]/div/div/div[1]/div/form/div[3]/div/div/div/input      JunOcha
     Click Element       //*[@id="main-layout"]/div/main/div/div/div/div/div/div[3]/div/div[2]/div/div/div[1]/div/form/div[4]/div/div/div/div/input  
     Click Element         //span[contains(text(),'Male')]
    Input Text           //*[@id="main-layout"]/div/main/div/div/div/div/div/div[3]/div/div[2]/div/div/div[1]/div/form/div[5]/div/div/div[1]/input   President
    Input Text           //*[@id="main-layout"]/div/main/div/div/div/div/div/div[3]/div/div[2]/div/div/div[1]/div/form/div[6]/div/div/div[1]/input   dog
    Input Text           //*[@id="main-layout"]/div/main/div/div/div/div/div/div[3]/div/div[2]/div/div/div[1]/div/form/div[7]/div/div/div/input     0999999999
    Input Text           //*[@id="main-layout"]/div/main/div/div/div/div/div/div[3]/div/div[2]/div/div/div[1]/div/form/div[8]/div/div/div/input      prayut@hotmail.com
     Click Element       //*[@id="main-layout"]/div/main/div/div/div/div/div/div[3]/div/div[2]/div/div/div[1]/div/form/div[9]/div/div/div/div[1]/input
     Click Element         //span[contains(text(),'Yellow List')]
     Click Element       //*[@id="main-layout"]/div/main/div/div/div/div/div/div[3]/div/div[2]/div/div/div[2]/button[2]
     Click Element       //*[@id="main-layout"]/div/main/div/div/div/div/div/div[3]/div/div[2]/div/div/div[1]/div[1]/div/img
     Choose File         //input[@name='file']       /Users/n.pechsiri/desktop/EHJZ41eUEAA28aD.jpg
     Click Element       //*[@id="main-layout"]/div/main/div/div/div/div/div/div[3]/div/div[2]/div/div/div[2]/button[2]
     sleep               2s
     Click Button        //div[@class='pt-5 el-col el-col-24']//button[@class='el-button el-button--success']
     Sleep               2s
    
    #Handle Alert                             timeout=10s

    #Click Button                          //*[@id="main-layout"]/div/main/div/div/div/div/div/div[1]/div[1]/div/div[2]/div[2]/button
    #Click Element                           //*[@id="main-layout"]/div/main/div/div/div/div/div/div[5]/div/div[1]/button
    #Handle Alert                    timeout=10s
    # Click Element                           //*[@id="main-layout"]/div/main/div/div/div/div/div/div[5]/div/div[2]/div/span/button[1]
   

     #Input Text                    //*[@id="main-layout"]/div/main/div/div/div/div/div/div[1]/div[1]/div/div[2]/div[3]/div/input    123
    #  sleep          4s
    # Click Button                       //*[@id="pane-0"]/div[1]/div/div[3]/table/tbody/tr[2]/td[1]/div/span/img
    

*** Test Cases ***
Create Employee Success
    Open Web emp.thingsconnext.co.th/login
    Login Success
    Click Employee
