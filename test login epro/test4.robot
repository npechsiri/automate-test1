*** Settings ***
Library    Selenium2Library
Test Teardown   Close All Browsers

*** Variables ***
${browser}    chrome
${url}    http://203.150.52.26/   
${input_id}     super@admin.com
${input_password}     1234
${input_id1}     nut@admin.com
${input_password1}     4321
${input_empty_text}
${expected_result}  WORKING !

*** Keywords ***
open web 203.150.52.26
    Open Browser     ${url}     ${browser}
Login PASS
    Input Text    id=email      ${input_id}
    Input Text    id=password   ${input_password}
    Submit Form
Login Fail Wrong Password
    Input Text    id=email      ${input_id}
    Input Text    id=password   ${input_password1}
    Submit Form
Login Fail Wrong User
    Input Text    id=email      ${input_id1}
    Input Text    id=password   ${input_password}
    Submit Form
Login Fail Wrong User Password
    Input Text    id=email      ${input_id1}
    Input Text    id=password   ${input_password1}
    Submit Form
Login Fail empty
    Input Text    id=email      ${input_empty_text}
    Input Text     id=password  $${input_empty_text} 
    Submit Form   
PASS
    Log to Console    ${expected_result}  
NOT PASS
    Log to Console    ${expected_result}
*** Test Cases ***
Login case Pass
    open web 203.150.52.26
    Login PASS
    PASS
    Location Should Be  http://203.150.52.26/home
Login case Fail1 Because wrong Password
    open web 203.150.52.26
    Login Fail Wrong Password
    NOT PASS
    Location Should Be  http://203.150.52.26/
Login case Fail1 Because wrong User
    open web 203.150.52.26
    Login Fail Wrong User
    NOT PASS
    Location Should Be  http://203.150.52.26/
Login case Fail because wrong user and password
    open web 203.150.52.26
    Login Fail Wrong User
    NOT PASS
    Location Should Be  http://203.150.52.26/
Login case Fail because empty
    open web 203.150.52.26
    Login Fail empty
    NOT PASS
    Location Should Be  http://203.150.52.26/
