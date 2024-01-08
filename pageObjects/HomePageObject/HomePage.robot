*** Settings ***
Resource            ../base/base.robot
Variables           HomePageLocator.yaml

Library    AppiumLibrary

*** Keywords ***
Verify Home Page Appreas    
    Wait Until Element Is Visible        ${Logo_HomePage}

Click Sign In Button On Home Page
    Wait Until Element Is Visible        ${signIn_button_homePage}
    Click Element                        ${signIn_button_homePage}    

Verify User Is Logged In
    Wait Until Element Is Visible         ${userNameTextHomePage}