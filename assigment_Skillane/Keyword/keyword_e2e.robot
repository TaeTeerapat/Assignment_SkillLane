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

Input Email for Login
    [Arguments]    ${Email}
    Input Text    data:testid:email    ${Email}

Input Password for Login
    [Arguments]    ${Password}
    Input Text    data:testid:password    ${Password}
    
Click submit button for Login
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