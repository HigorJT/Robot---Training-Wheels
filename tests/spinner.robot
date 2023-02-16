*** Settings ***

Resource          ../resources/base.robot

Test Setup        Open Session
Test Teardown     Close Session

*** Variables ***

${SPINNER}         id=io.qaninja.android.twp:id/spinnerJob
${LIST_OPTION}     class=android.widget.ListView

*** Test Cases ***
Deve selecionar o perfil QA
    
    Go to Signup Form
    
    Choice job    QA

Deve selecionar o perfil DevOps

    Go to Signup Form
    
    Choice job   DevOps

*** Keywords ***
Choice job
    [Arguments]    ${target}

    Click Element                    ${SPINNER} 

    Wait Until Element Is Visible    ${LIST_OPTION}

    Click text                       ${target}