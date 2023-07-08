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
    Login using email
    Validate the page is loaded
    close all browsers

