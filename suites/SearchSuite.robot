*** Settings ***
Resource    ../pageObjects/SearchPageObject/SearchPageObject.robot
Resource    ../pageObjects/base/base.robot
Resource    ../pageObjects/LoginPageObject/LoginPage.robot
Resource    ../pageObjects/HomePageObject/HomePage.robot

*** Variables ***
${VALID_EMAIL}                   support@ngendigital.com
${VALID_PASSWORD}                abc123
${FLIGHT_NUMBER}                 Flight-001

*** Test Cases ***
User should be able to login
    #Langkah 1 : Buka Aplikasi
    Open Flight Application
    #Langkah 2 : Klik Button Sign in pada Home Page
    Click Sign In Button On Home Page
    #Langkah 3 : Verifikasi Masuk ke Halaman Login
    Verify Login Appreas
    #Langkah 4 : Input username
    Input User Email On Login Page    ${VALID_EMAIL}
    #Langkah 5 : Input password
    Input User Password On Login Page    ${VALID_PASSWORD}
    #Langkah 6 : Klik Button Sign in pada Halaman Login
    Click Sign In Button On Login Page

User should be able to search flight number
    #Langkah 1: Klik button Search
    Click Search Button
    #Langkah 2: Pastikan muncul tulisan "Enter Flight Number"
    Verify Enter Flight Number Text is Displayed
    #Langkah 3: Pastikan button SEARCH muncul
    Verify SEARCH Button is Displayed
    #Langkah 4: Input fligt number
    Input Flight Number    ${FLIGHT_NUMBER}
    #Langkah 5: Klik button SEARCH
    Click SEARCH Button on The Search Page
    #Langkah 6: Pastikan pop up warning muncul
    # Verify Pop Up Warning is Displayed
    #Langkah 7: Tutup Aplikasi
    Close Flight application