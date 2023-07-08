*** Settings ***
Documentation   To validate the Amazon website
Library     SeleniumLibrary
Variables        ../Page Objects/PO.py

*** Keywords ***
Close the browser
    SeleniumLibrary.Close Browser

Open the browser and launch the amazon website
    Create Webdriver    Chrome      executable_path=${chrome_path}
    Go To   ${url}
    maximize browser window

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
    ${email}        input text       ${email_txt}        anobhama99@gmail.com
    sleep       3s
    click element       ${Continue_btn}
    sleep   3s
    ${passwrd}      input password       ${passwrd_txt}        Jappyrose@23
    sleep       3s
    click element       ${signIn_btn}
    sleep   3s
