*** Settings ***
Resource            ../base/base.robot
Variables           PriceBookPageLocator.yaml
Library    AppiumLibrary



*** Keywords ***
# Verify Login Appreas
#     Wait Until Element Is Visible    ${emailInputLoginPage}
#     Wait Until Element Is Visible    ${passwordInputLoginPage}
#     Wait Until Element Is Visible    ${signInButtonLoginPage}

Verify Price Book Page appears
    Wait Until Element Is Visible    ${confirmorderPriceBookPage}

Click Confirm Button On Price Book Page
    Click Element    ${confirmorderButtonBookPage}

Verify User Is Booked
     Wait Until Element Is Visible    ${userbookedPriceBookPage}