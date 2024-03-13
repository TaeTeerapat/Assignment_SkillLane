*** Settings ***
Library    SeleniumLibrary
Resource    ../Keyword/keyword_e2e.robot
# Library    XML


*** Test Cases ***
test web
    Set Selenium Speed    1
    #Login
    Open QA Hive Web Browser
    Input Email for Login    demo01@demo.com
    Input Password for Login    Welcome1
    Click submit button for Login
    # Backlog 2
    Click add Apple Watch
    Click the shopping cart to view product information
    Input Card Holder Name    Demo Assignment
    Input Credit Card Number    4242424242424242
    Input Credit Card Expiration    09/2027
    Input Credit Card Cvv    999
    Click Element    css:button.ripple
    #Payment success
    Wait Until Page Contains    Payment Successful
    Close All Browsers
