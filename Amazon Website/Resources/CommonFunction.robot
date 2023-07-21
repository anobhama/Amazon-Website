*** Settings ***
Documentation   To validate the Amazon website
Library     SeleniumLibrary
Library     String
Variables        ../Page Objects/PO.py
Resource        ../TestData/Input.robot

*** Keywords ***
Close the browser
    SeleniumLibrary.Close Browser

Open the browser and launch the amazon website
    Create Webdriver    Chrome      executable_path=${chrome_path}
    Go To   ${url}
    maximize browser window

Login into an account
    [arguments]         ${EMAIL}        ${PASSWRD}
    Click on the login link
    Login using email       ${EMAIL}
    Enter the password      ${PASSWRD}
    Validate the page is loaded

Log out of an account
    Mouse over the login link
    Log out of the account

Validate the page is loaded
    wait until element is visible        ${logo}
    sleep   3s

Click on the Language change settings
    click element           ${language_setting_link}
    sleep   3s
    wait until element is visible       ${language_heading}

Change into specific language
    [arguments]     ${NEW_LANGUAGE}
    click element           xpath://span[starts-with(text(),'${NEW_LANGUAGE}')]
    sleep       3s

Save the changes
    click element           ${save_btn}
    sleep       3s

Click on the login link
    Click link          ${login_link}
    sleep       3s
    wait until element is visible           //h1[@class='a-spacing-small']
    sleep       3s

Login using email
    [arguments]         ${EMAIL}
    ${email}        input text       ${email_txt}        ${EMAIL}
    sleep       3s
    click element       ${Continue_btn}
    sleep   3s

Enter the password
    [arguments]          ${PASSWRD}
    ${passwrd}      input password       ${passwrd_txt}        ${PASSWRD}
    sleep       3s
    click element       ${signIn_btn}
    sleep   3s

Mouse over the login link
    mouse over      ${login_link}
    sleep       3s
    wait until element is visible       ${Signout_btn}

Log out of the account
    sleep       3s
    click element       ${Signout_btn}
    wait until element is visible           //h1[@class='a-spacing-small']
    sleep       3s

Validate the error message
    [arguments]     ${ERROR_MSG}
    ${response}   get text        //span[@class='a-list-item']
    ${failure_msg}      BuiltIn.Set Variable       Matched
    run keyword if      '''${response}'''!='''${ERROR_MSG}'''  fail        ${failure_msg}
