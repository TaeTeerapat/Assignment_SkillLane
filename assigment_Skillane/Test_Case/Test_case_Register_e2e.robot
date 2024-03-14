*** Settings ***
Library    SeleniumLibrary
Library    Screenshot
Resource    ../Keyword/keyword_e2e.robot
# Library    XML


*** Test Cases ***
Test scenario Register E2E
    Set Selenium Speed    1
    # Go to Website
    Open QA Hive Web Browser
    Maximize Browser Window
    # Register for login
    Click Register button for register
    Input field Email    Demo04@gmail.com
    Input field Password    Welcome3
    Input field Name from Register Page    Danny Bell
    Select Gender    Male
    Click Submit button
    # Go to product page and Select product
    Click add Apple Watch
    Click the shopping cart to view product information
    #Payment page
    Input Card Holder Name    Danny Bell
    Input Credit Card Number    4242424242424242
    Input Credit Card Expiration    09/2027
    Input Credit Card Cvv    999
    Click Element    css:button.ripple
    #Payment success
    Wait Until Page Contains    Payment Successful
    Take Screenshot
    Close All Browsers