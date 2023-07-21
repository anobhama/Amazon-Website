*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${Crt_email}            Your_correct_email_id
${crt_password}         Your_correct_password
${wrg_email}            Your_wrong_email_id
${wrg_password}         Your_wrong_password
${wrg_mail_msg}         We cannot find an account with that email address
${wrg_passwrd_msg}      Your password is incorrect