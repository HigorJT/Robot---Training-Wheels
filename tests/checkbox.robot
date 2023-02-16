*** Settings ***

Resource          ../resources/base.robot

Test Setup        Open Session
Test Teardown     Close Session

*** Test Cases ***
Deve selecionar a opção Python 
    
    Go To CheckBox

    ${element}=        Set Variable        xpath=//android.widget.CheckBox[contains(@text, 'Python')]    
    
    Click Element                     ${element} 
    
    Element Should Be Visible         id=io.qaninja.android.twp:id/rvContainer
    
    Element Attribute Should Match    ${element}   checked    true    