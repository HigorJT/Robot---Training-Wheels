*** Settings ***

Resource          ../resources/base.robot

Test Setup        Open Session
Test Teardown     Close Session

*** Test Cases ***
Deve logar com sucesso
    
    Go to Login Form

    Input Text       io.qaninja.android.twp:id/etEmail       eu@papito.io
    Input Text       io.qaninja.android.twp:id/etPassword    qaninja
    Click Element    io.qaninja.android.twp:id/btnSubmit     

    Wait Until Page Contains          Show! Suas credenciais são validas.