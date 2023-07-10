*** Settings ***
Documentation   To validate the Amazon website
Library     SeleniumLibrary
Test Teardown   Close Browser
Resource        ../Resources/CommonFunction.robot
Variables        ../Page Objects/PO.py

*** Test Cases ***
TC_1_Launch_Page
    Open the browser and launch the amazon website
    Validate the page is loaded
    Close the browser

TC_2_Language_Change
    Open the browser and launch the amazon website
    Validate the page is loaded
    Click on the Language change settings
    Change into specific language       TA
    Save the changes
    Click on the Language change settings
    Change into specific language       EN
    Save the changes
    close all browsers

TC_3_Login_Into_Amazon
    Open the browser and launch the amazon website
    Validate the page is loaded
    Click on the login link
    Login using email           ${Crt_email}
    Enter the password          ${crt_password}
    Validate the page is loaded
    close all browsers

TC_4_LogOut_Of_Amazon_Account
    Open the browser and launch the amazon website
    Validate the page is loaded
    Login into an account       ${Crt_email}     ${crt_password}
    Log out of an account
    close all browsers

TC_5_Login_Into_Amazon_With_Wrong_MailId
    Open the browser and launch the amazon website
    Validate the page is loaded
    Click on the login link
    Login into an account       ${wrg_email}     ${wrg_password}
    Validate the error message
    close all browsers