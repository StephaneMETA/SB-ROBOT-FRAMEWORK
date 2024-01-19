*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}   chrome
${SELSPEED}  0.0s

*** Test Cases ***
robotframework-testing_selenium
    [Setup]  Run Keywords  Open Browser  https://magento.softwaretestingboard.com/  ${BROWSER}
    ...              AND   Set Selenium Speed  ${SELSPEED}
    # open    https://magento.softwaretestingboard.com/
    Maximize Browser Window
    click    link=Sign In
    click    id=email
    type    id=email    sbernardini.biot@gmail.com
    type    id=pass    stephane2024&&&
    click    xpath=//button[@id='send2']/span

    # Sleep    5s

    #click    xpath=//a[@id='ui-id-19']/span

    Mouse Over    xpath=//nav[@class='navigation'][1]/ul/li[3]/a/span[2]
    Mouse Over    xpath=//ul[@class='level0 submenu ui-menu ui-widget ui-widget-content ui-corner-all']/li[@class='level1 nav-3-1 category-item first parent ui-menu-item'][1]/a/span[2]
    Click Element    xpath=//ul[@class='level1 submenu ui-menu ui-widget ui-widget-content ui-corner-all expanded']/li[@class='level2 nav-3-1-1 category-item first ui-menu-item']/a/span[1]


    #click    class=level2 nav-3-1-1 category-item first ui-menu-item
    #Click     css=li.level2.nav-3-1-1.category-item.first.ui-menu-item
    #Click Element    xpath=/html[1]/body[1]/div[2]/div[1]/div[1]/div[2]/nav[1]/ul[1]/li[3]/ul[1]/li[1]/ul[1]/li[1]/a[1]
    #Execute JavaScript    document.evaluate('/html[1]/body[1]/div[2]/div[1]/div[1]/div[2]/nav[1]/ul[1]/li[3]/ul[1]/li[1]/ul[1]/li[1]/a[1]', document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.click()



    click    xpath=//main/div[3]/div/div[4]/ol/li[2]/div/div/strong/a
    click    id=option-label-size-143-item-166
    click    id=option-label-color-93-item-49
    click    id=product-addtocart-button


    click    xpath=//img[@alt='Abominable Hoodie']
    click    id=option-label-size-143-item-166
    click    id=option-label-color-93-item-50
    click    xpath=//button[@id='product-addtocart-button']/span
    click    xpath=//img[@alt='Balboa Persistence Tee']
    click    id=option-label-size-143-item-166
    click    id=option-label-color-93-item-52
    click    id=option-label-color-93-item-52
    click    xpath=//div[@id='product-options-wrapper']/div/div/div[2]
    click    xpath=//button[@id='product-addtocart-button']/span
    click    xpath=//button[@id='product-addtocart-button']/span
    click    xpath=//img[@alt='Deion Long-Sleeve EverCool™ Tee']
    click    id=option-label-size-143-item-166
    click    id=option-label-color-93-item-49
    click    xpath=//button[@id='product-addtocart-button']/span



    #Wait Until Element Is Enabled    xpath=(.//*[normalize-space(text()) and normalize-space(.)='My Cart'])[1]/following::span[2]

    Execute Javascript    document.evaluate("xpath=(.//*[normalize-space(text()) and normalize-space(.)='My Cart'])[1]/following::span[2]", document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.click()

    # click    xpath=(.//*[normalize-space(text()) and normalize-space(.)='My Cart'])[1]/following::span[2]
    
    
    click    xpath=//div[@id='minicart-content-wrapper']/div[2]/div[5]/div
    click    xpath=//div[@id='minicart-content-wrapper']/div[2]/div[5]/div/a/span
    click    xpath=//table[@id='shopping-cart-table']/tbody[2]/tr[2]/td/div/a[3]
    click    id=cart-579648-qty
    type    id=cart-579648-qty    12
    click    xpath=//form[@id='form-validate']/div[2]/button[2]/span
    click    xpath=(.//*[normalize-space(text()) and normalize-space(.)='My Cart'])[1]/following::span[2]
    click    link=Remove
    click    xpath=(.//*[normalize-space(text()) and normalize-space(.)='Cancel'])[1]/following::button[1]
    click    link=My Cart
    click    xpath=(.//*[normalize-space(text()) and normalize-space(.)='My Cart'])[1]/following::span[2]
    click    link=Remove
    click    xpath=(.//*[normalize-space(text()) and normalize-space(.)='Cancel'])[1]/following::span[1]
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
