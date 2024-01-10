*** Settings ***
Resource            ../base/base.robot
Variables           SearchPageObjectLocator.yaml
Variables           ../HomePageObject/HomePageLocator.yaml
Library    AppiumLibrary

*** Keywords ***
Click Search Button
    Wait Until Element Is Visible    ${searchButtonHomePage}
    Click Element    ${searchButtonHomePage}

Verify Enter Flight Number Text is Displayed
    Wait Until Element Is Visible    ${textEnterFlight}
    Element Should Contain Text    ${textEnterFlight}    Enter Flight Number

Verify SEARCH Button is Displayed
    Wait Until Element Is Visible    ${searchButton}
    Element Should Be Visible    ${searchButton}

Input Flight Number
    [Arguments]    ${Flight_Num}
    Input Text    ${searchTextField}    ${Flight_Num}

Click SEARCH Button on The Search Page
    Wait Until Element Is Visible    ${searchButton}
    Click Element    ${searchButton}

# Verify Pop Up Warning is Displayed
#     Wait Until Element Is Visible    ${searchTextToats}
    # Element Should Contain Text    ${searchTextToats}    Please enter valid Flight Number