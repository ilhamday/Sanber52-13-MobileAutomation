*** Settings ***
Resource            ../base/base.robot
Variables           BookPageLocator.yaml
Library    AppiumLibrary



*** Keywords ***
Verify Login Appreas
    Wait Until Element Is Visible    ${emailInputLoginPage}
    Wait Until Element Is Visible    ${passwordInputLoginPage}
    Wait Until Element Is Visible    ${signInButtonLoginPage}

Input User Email On Login Page
    [Arguments]       ${email}
    Input Text        ${emailInputLoginPage}    ${email}

Input User Password On Login Page
    [Arguments]       ${password}
    Input Text        ${passwordInputLoginPage}    ${password}

Click Sign In Button On Login Page
    Click Element    ${signInButtonLoginPage}