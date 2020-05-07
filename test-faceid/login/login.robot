*** Settings ***
Library         Selenium2Library 
Test Teardown   Close All Browsers

*** Variables ***
${Browsers}         chrome
${url}              https://emp.thingsconnext.co.th/login
${user}             sqa2.ad
${user1}            1234.ad
${password}         hellosqa2ad 
${password1}        helloworld
${empty_text}

*** Keywords ***
Open Web emp.thingsconnext.co.th/login
    Selenium2Library.Open Browser    ${url}     ${Browsers}
Login Success 
     Input Text      //*[@id="app"]/div/div/div/div/div/div[2]/div/form/div[1]/div/div[1]/input       ${user} 
     Input Text      //*[@id="app"]/div/div/div/div/div/div[2]/div/form/div[2]/div/div[1]/input       ${password} 
     Click Button    //*[@id="app"]/div/div/div/div/div/div[2]/div/button
     sleep           4s
Login Fail because user wrong 
     Input Text      //*[@id="app"]/div/div/div/div/div/div[2]/div/form/div[1]/div/div[1]/input       ${user1}   
     Input Text      //*[@id="app"]/div/div/div/div/div/div[2]/div/form/div[2]/div/div[1]/input       ${password}    
     Click Button    //*[@id="app"]/div/div/div/div/div/div[2]/div/button
     sleep           1s
Login Fail because password wrong
     Input Text      //*[@id="app"]/div/div/div/div/div/div[2]/div/form/div[1]/div/div[1]/input       ${user}   
     Input Text      //*[@id="app"]/div/div/div/div/div/div[2]/div/form/div[2]/div/div[1]/input       ${password1}   
     Click Button    //*[@id="app"]/div/div/div/div/div/div[2]/div/button
     sleep           1s
Login Fail because user password wrong
     Input Text      //*[@id="app"]/div/div/div/div/div/div[2]/div/form/div[1]/div/div[1]/input       ${user1}    
     Input Text      //*[@id="app"]/div/div/div/div/div/div[2]/div/form/div[2]/div/div[1]/input       ${password1}   
     Click Button    //*[@id="app"]/div/div/div/div/div/div[2]/div/button
     sleep           1s
Login Fail because empty
     Input Text      //*[@id="app"]/div/div/div/div/div/div[2]/div/form/div[1]/div/div[1]/input       ${empty_text}    
     Input Text      //*[@id="app"]/div/div/div/div/div/div[2]/div/form/div[2]/div/div[1]/input       ${empty_text}   
     Click Button    //*[@id="app"]/div/div/div/div/div/div[2]/div/button
     sleep           1s
*** Test Cases ***
Login Success
    Open Web emp.thingsconnext.co.th/login
    Login Success
    Location Should Be  https://emp.thingsconnext.co.th/employee
Login Faill Wrong user 
    Open Web emp.thingsconnext.co.th/login
    Login Fail because user wrong
    Location Should Be  https://emp.thingsconnext.co.th/login
Login Faill Wrong password
    Open Web emp.thingsconnext.co.th/login
    Login Fail because password wrong
    Location Should Be  https://emp.thingsconnext.co.th/login
Login Faill wrong user password
    Open Web emp.thingsconnext.co.th/login
    Login Fail because user password wrong
    Location Should Be  https://emp.thingsconnext.co.th/login
Login Faill empty
    Open Web emp.thingsconnext.co.th/login
    Login Fail because empty
    Location Should Be  https://emp.thingsconnext.co.th/login