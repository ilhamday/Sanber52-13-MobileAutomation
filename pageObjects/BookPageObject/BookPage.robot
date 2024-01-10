*** Settings ***
Resource            ../base/base.robot
Variables           BookPageLocator.yaml
Library    AppiumLibrary



*** Keywords ***
# Verify Login Appreas
#     Wait Until Element Is Visible    ${emailInputLoginPage}
#     Wait Until Element Is Visible    ${passwordInputLoginPage}
#     Wait Until Element Is Visible    ${signInButtonLoginPage}

Verify Book Page appears
    Wait Until Element Is Visible    ${onewayBarBookPage}
    Wait Until Element Is Visible    ${fromcitySpinnerFormBookPage}
    Wait Until Element Is Visible    ${tocitySpinnerFormBookPage}
    Wait Until Element Is Visible    ${classSpinnerFormBookPage}
    Wait Until Element Is Visible    ${startdateBookPage}
    Wait Until Element Is Visible    ${flighthotelRadioButtonBookPage}
    Wait Until Element Is Visible    ${bookButtonBookPage}

Click FlightHotel Radio Button On Book Page
    Click Element    ${flighthotelRadioButtonBookPage}

Click Book Button On Book Page
    Click Element    ${bookButtonBookPage}

Click Chicago Button On Book Page
    Click Element    ${chicagoBookPage}
# Input User Email On Login Page
#     [Arguments]       ${email}
#     Input Text        ${emailInputLoginPage}    ${email}

# Input User Password On Login Page
#     [Arguments]       ${password}
#     Input Text        ${passwordInputLoginPage}    ${password}

# Click Sign In Button On Login Page
#     Click Element    ${signInButtonLoginPage}

