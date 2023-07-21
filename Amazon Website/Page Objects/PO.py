#TC_1_Launch_Page
chrome_path='C:/Users/Anu/Documents/AutomationTesting/chromedriver.exe'
url='https://www.amazon.in/'

#TC_2_Language_Change
logo="xpath://a[@id='nav-logo-sprites']"
language_setting_link="xpath://span[@class='icp-nav-link-inner']"
language_heading="id:icp-language-heading"
language_selection_btn="xpath://span[starts-with(text(),'${NEW_LANGUAGE}')]"
save_btn="xpath://input[@class='a-button-input']"

#TC_3_Login_Into_Amazon
login_link="xpath://a[@id='nav-link-accountList']"
email_txt="xpath://input[@id='ap_email']"
Continue_btn="xpath://input[@id='continue']"
passwrd_txt="xpath://input[@id='ap_password']"
signIn_btn="xpath://input[@id='signInSubmit']"

#TC_4_LogOut_Of_Amazon_Account
Signout_btn="xpath://span[contains(text(),'Sign Out')]"

