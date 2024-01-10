*** Settings ***
Resource    ../pageObjects/HomePageObject/HomePage.robot
Resource    ../pageObjects/base/base.robot
Resource    ../pageObjects/LoginPageObject/LoginPage.robot
Resource    ../pageObjects/BookPageObject/BookPage.robot
Resource    ../pageObjects/PriceBookPageObject/PriceBookPage.robot

*** Variables ***
${VALID_EMAIL}                   support@ngendigital.com
${VALID_PASSWORD}                abc123

*** Test Cases ***
User should be able to book 
    #Langkah 1 : Buka Aplikasi
    Open Flight Application
    #Langkah 2 : Verifikasi Masuk ke Halaman Utama (Home Page)
    Verify Home Page Appreas
    #Langkah 3 : Klik Button Sign in pada Home Page
    Click Sign In Button On Home Page
    #Langkah 4 : Verifikasi Masuk ke Halaman Login
    Verify Login Appreas
    #Langkah 5 : Input username
    Input User Email On Login Page    ${VALID_EMAIL}
    #Langkah 6 : Input password
    Input User Password On Login Page    ${VALID_PASSWORD}
    #Langkah 7 : Klik Button Sign in pada Halaman Login
    Click Sign In Button On Login Page
    #Langkah 8 : Verifikasi User login
    Verify User Is Logged In
    #Langkah 9 : Klik Button Book pada Home Page    
    Click Book Button On Home Page
    # Step 10 : Verify book page appears
    Verify Book Page appears
    #Langkah 11 : Klik Flight Radio Button pada Book Page
    Click FlightHotel Radio Button On Book Page
    #Langkah 12 : Klik Book pada Book Page
    Click Book Button On Book Page
    # Step 13 : Verify Price Book page appears
    Verify Price Book Page appears
    #Langkah 28 : Klik Button City pada Book Page    
    Click Confirm Button On Price Book Page
    #Langkah 29 : Verifikasi User booking
    Verify User Is Booked
    #Langkah 30 : Tutup Aplikasi
    Close Flight Application