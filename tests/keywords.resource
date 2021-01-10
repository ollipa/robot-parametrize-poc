*** Settings ***

*** Keywords ***

Register A New Transaction
    [Documentation]    Send a request to backend to register a transaction.
    No Operation

Open Browser To Input Card Information
    [Documentation]    Open browser and redirect to card information page.
    No Operation

Input Card Information
    [Arguments]    ${card_type}
    Log    Card type=${card_type}

Process Transaction
    [Documentation]    Send a request to backend to complete a transaction.
    No Operation

Cancel Transaction
    [Documentation]    Send a request to backend to cancel a transaction.
    No Operation

Transaction Status Should Be
    [Documentation]    Verify transaction status from backend.
    [Arguments]    ${status}
    No Operation
