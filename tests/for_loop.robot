*** Settings ***
Documentation     Parametrize with for loop.
Resource          keywords.resource

*** Variables ***

@{CARD_TYPES}    MasterCard     Visa

*** Test Cases ***

Complete A Card Payment
    FOR    ${card_type}    IN    @{CARD_TYPES}
        Register A New Transaction
        Open Browser To Input Card Information
        Input Card Information    ${card_type}
        Process Transaction
        Transaction Status Should Be    successful
    END

Cancel A Card Payment
    FOR    ${card_type}    IN    @{CARD_TYPES}
        Register A New Transaction
        Open Browser To Input Card Information
        Input Card Information    ${card_type}
        Cancel Transaction
        Transaction Status Should Be    cancelled
    END

Get Transaction Status
    Register A New Transaction
    Transaction Status Should Be    registered
