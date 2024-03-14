*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://web-demo.qahive.com/e-commerce/register
${BROWSER}    Chrome
${Travel_Bag}    (//div[@class="card"]//button)[1]
${Apple_Watch}    (//div[@class="card"]//button)[2]
${Hand_Bag}    (//div[@class="card"]//button)[3]


*** Keywords ***
Open QA Hive Web Browser
    Open Browser    ${URL}    ${BROWSER}
Input field Email
    [Arguments]    ${Email}
    Input Text    data:testid:email    ${Email}
Input field Password
    [Arguments]    ${Password}
    Input Text    data:testid:password    ${Password}
Input field Name from Register Page
    [Arguments]    ${Name_register_page}
    Input Text    data:testid:name    ${Name_register_page}

Select Gender
    [Arguments]    ${gender}
    Select Radio Button    gender    ${gender}

Click Register button for register
    Click Element    data:testid:loginLink
    Wait Until Page Contains Element    data:testid:name
    
Click Submit button
    Click Element    data:testid:submit
    Wait Until Page Contains Element    ${Apple_Watch}

Click add Apple Watch
    Click Button    ${Apple_Watch}
    Sleep    1

Click the shopping cart to view product information
    Click Element    css:a[href="/e-commerce/checkout"]
    Wait Until Page Contains Element    css:input[name="cardholderName"]

Input Card Holder Name
    [Arguments]    ${CardholderName}
    Input Text    //input[@name="cardholderName"]    ${CardholderName}

Input Credit Card Number
    [Arguments]    ${CardNumber}
    Input Text    //input[@name="cardNumber"]    ${CardNumber}

Input Credit Card Expiration
    [Arguments]    ${Expiration}
    Input Text    //input[@name="expiration"]    ${Expiration}

Input Credit Card Cvv
    [Arguments]    ${Cvv}
    Input Text    //input[@name="cvv"]    ${Cvv}