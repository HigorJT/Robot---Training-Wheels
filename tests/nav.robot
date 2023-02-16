*** Settings ***

Resource          ../resources/base.robot

Test Setup        Open Session
Test Teardown     Close Session

*** Variables ***

${Tollbar_Title}       id=io.qaninja.android.twp:id/toolbarTitle    

*** Test Cases *** 
Deve acessar a tela Dialogs   
   
    Get Started
    Open Nav

    Click Text                       DIALOGS
    Wait Until Element Is Visible    ${Tollbar_Title}   
    Element Text Should Be           ${Tollbar_Title}    DIALOGS

Deve acessar a tela de formulários

    Get Started
    Open Nav

    Click Text                       FORMS
    Wait Until Element Is Visible    ${Tollbar_Title}    
    Element Text Should Be           ${Tollbar_Title}    FORMS

Deve acessar a tela de vingadores

    Get Started
    Open Nav

    Click Text                       AVENGERS
    Wait Until Element Is Visible    ${Tollbar_Title}    
    Element Text Should Be           ${Tollbar_Title}    AVENGERS


