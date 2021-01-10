*** Settings ***
Documentation     Parametrize with using a template (data-driven style).
Resource          keywords.resource

*** Test Cases ***

Complete A Card Payment
    [Template]    Complete A Card Payment ${card_type}
    MasterCard
    Visa

Cancel A Card Payment
    [Template]    Cancel A Card Payment ${card_type}
    MasterCard
    Visa

Get Transaction Status
    Register A New Transaction
    Transaction Status Should Be    registered

*** Keywords ***

Complete A Card Payment ${card_type}
    Register A New Transaction
    Open Browser To Input Card Information
    Input Card Information    ${card_type}
    Process Transaction
    Transaction Status Should Be    successful

Cancel A Card Payment ${card_type}
    Register A New Transaction
    Open Browser To Input Card Information
    Input Card Information    ${card_type}
    Cancel Transaction
    Transaction Status Should Be    cancelled
