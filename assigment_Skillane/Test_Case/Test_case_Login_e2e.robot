*** Settings ***
Library    SeleniumLibrary
Library    Screenshot
Resource    ../Keyword/keyword_e2e.robot


*** Variables ***

*** Test Cases ***
Test scenario Login E2E
    Set Selenium Speed    1
# Go to Website
    Open QA Hive Web Browser
    Maximize Browser Window
# Login with user exist in system
    Input field Email   demo01@demo.com
    Input field Password   Welcome1
    Click Submit button
# Select product
    Click add Apple Watch
    Click the shopping cart to view product information
#Payment page
    Wait Until Page Contains Element    (//div[@class="d-flex justify-content-between"])[1]//div[@class="d-flex flex-row align-items-center"][2]/div[2]/h5
    ${total_price} =  Get Text    (//div[@class="d-flex justify-content-between"])[1]//div[@class="d-flex flex-row align-items-center"][2]/div[2]/h5
    ${product_price} =  Get Text    (//div[@class="d-flex justify-content-between"])[2]/p[2]
# Check Total = Product price ถ้าเท่ากันให้ทำการกรอกข้อมูลแล้วกดจ่ายเงิน
    IF    ${product_price} == ${total_price}
        Input Card Holder Name    Peter Antie Deny
        Input Credit Card Number    5555555555554444
        Input Credit Card Expiration    10/2025
        Input Credit Card Cvv    321
        Click Element    css:button.ripple
        Wait Until Page Contains    Payment Successful
    ELSE
        Log    Product price not match
    END
#Payment success
    Take Screenshot
    Close All Browsers



 