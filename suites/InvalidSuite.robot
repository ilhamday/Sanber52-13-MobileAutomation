*** Settings ***
Resource    ../pageObjects/HomePageObject/HomePage.robot
Resource    ../pageObjects/base/base.robot
Resource    ../pageObjects/LoginPageObject/LoginPage.robot

*** Variables ***
#${VALID_EMAIL}                   support@ngendigital.com
#${VALID_PASSWORD}                abc123
${INVALID_EMAIL}                  test@gmail.com
${INVALID_PASSWORD}               123456

*** Test Cases ***
User should be able to login with invalid credentials
    #Langkah 1 : Buka Aplikasi
    Open Flight Application
    #Langkah 2 : Verifikasi Masuk ke Halaman Utama (Home Page)
    Verify Home Page Appreas
    #Langkah 3 : Klik Button Sign in pada Home Page
    Click Sign In Button On Home Page
    #Langkah 4 : Verifikasi Masuk ke Halaman Login
    Verify Login Appreas
    #Langkah 5 : Input username
    Input User Email On Login Page    ${INVALID_EMAIL}
    #Langkah 6 : Input password
    Input User Password On Login Page    ${INVALID_PASSWORD}
    #Langkah 7 : Klik Button Sign in pada Halaman Login
    Click Sign In Button On Login Page
    #Langkah 8 : Muncul Error Massage
    
    #Langkah 9 : Tutup Aplikasi
    Close Flight Application