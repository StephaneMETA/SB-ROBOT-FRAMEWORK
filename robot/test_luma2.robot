*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}   chrome
${SELSPEED}  0.0s

*** Test Cases ***
robotframework-testing_selenium
    [Setup]  Run Keywords  Open Browser  https://magento.softwaretestingboard.com/  ${BROWSER}
    ...              AND   Set Selenium Speed  ${SELSPEED}
    Maximize Browser Window
    # open    https://magento.softwaretestingboard.com/
    click    link=Sign In
    click    id=email
    type    id=email    sbernardini.biot@gmail.com
    type    id=pass    stephane2024&&&
    click    xpath=//button[@id='send2']/span

    #Log    Avant le clic sur l'élément
    Wait Until Element Is Enabled    xpath=//a[@id='ui-id-19']/span
    #Capture Page Screenshot    avant_clic.png
    #click    xpath=//a[@id='ui-id-19']/span
    
    Execute Javascript    document.querySelector('a#ui-id-19 span').click()

    #Capture Page Screenshot    apres_clic.png
    #Log    Après le clic sur l'élément
    
    click    xpath=//img[@alt='Montana Wind Jacket']
    click    id=option-label-size-143-item-166
    click    id=option-label-color-93-item-49
    click    xpath=//button[@id='product-addtocart-button']/span

    #click    xpath=//a[@id='ui-id-11']/span
    Execute Javascript    document.querySelector('a#ui-id-11 span').click()
    
    click    xpath=//img[@alt='Olivia 1/4 Zip Light Jacket']
    click    id=option-label-size-143-item-166
    click    id=option-label-color-93-item-49
    click    xpath=//button[@id='product-addtocart-button']/span
    click    xpath=(.//*[normalize-space(text()) and normalize-space(.)='Toggle Nav'])[1]/following::a[2]
    click    id=ui-id-1
    click    xpath=//div[@id='minicart-content-wrapper']/div[2]/div[5]/div/a/span
    click    link=Remove item
    click    link=Remove item
    click    xpath=//button[@type='button']
    click    link=Sign Out
    [Teardown]  Close Browser

*** Keywords ***
open
    [Arguments]    ${element}
    Go To          ${element}

clickAndWait
    [Arguments]    ${element}
    Click Element  ${element}

click
    [Arguments]    ${element}
    Click Element  ${element}

sendKeys
    [Arguments]    ${element}    ${value}
    Press Keys     ${element}    ${value}

submit
    [Arguments]    ${element}
    Submit Form    ${element}

type
    [Arguments]    ${element}    ${value}
    Input Text     ${element}    ${value}

selectAndWait
    [Arguments]        ${element}  ${value}
    Select From List   ${element}  ${value}

select
    [Arguments]        ${element}  ${value}
    Select From List   ${element}  ${value}

verifyValue
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

verifyText
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

verifyElementPresent
    [Arguments]                  ${element}
    Page Should Contain Element  ${element}

verifyVisible
    [Arguments]                  ${element}
    Page Should Contain Element  ${element}

verifyTitle
    [Arguments]                  ${title}
    Title Should Be              ${title}

verifyTable
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

assertConfirmation
    [Arguments]                  ${value}
    Alert Should Be Present      ${value}

assertText
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

assertValue
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

assertElementPresent
    [Arguments]                  ${element}
    Page Should Contain Element  ${element}

assertVisible
    [Arguments]                  ${element}
    Page Should Contain Element  ${element}

assertTitle
    [Arguments]                  ${title}
    Title Should Be              ${title}

assertTable
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

waitForText
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

waitForValue
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

waitForElementPresent
    [Arguments]                  ${element}
    Page Should Contain Element  ${element}

waitForVisible
    [Arguments]                  ${element}
    Page Should Contain Element  ${element}

waitForTitle
    [Arguments]                  ${title}
    Title Should Be              ${title}

waitForTable
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

doubleClick
    [Arguments]           ${element}
    Double Click Element  ${element}

doubleClickAndWait
    [Arguments]           ${element}
    Double Click Element  ${element}

goBack
    Go Back

goBackAndWait
    Go Back

runScript
    [Arguments]         ${code}
    Execute Javascript  ${code}

runScriptAndWait
    [Arguments]         ${code}
    Execute Javascript  ${code}

setSpeed
    [Arguments]           ${value}
    Set Selenium Timeout  ${value}

setSpeedAndWait
    [Arguments]           ${value}
    Set Selenium Timeout  ${value}

verifyAlert
    [Arguments]              ${value}
    Alert Should Be Present  ${value}
