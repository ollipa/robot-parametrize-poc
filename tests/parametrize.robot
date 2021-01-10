*** Settings ***
Documentation     Parametrize with settings.
Resource          keywords.resource
Parametrize       MasterCard     Visa

*** Test Cases ***

Complete A Card Payment
    Register A New Transaction
    Open Browser To Input Card Information
    Input Card Information    ${PARAM}
    Process Transaction
    Transaction Status Should Be    successful

Cancel A Card Payment
    # Override suite parametrization in with different values.
    [Parametrize]    RoboCard    TestCard
    Register A New Transaction
    Open Browser To Input Card Information
    Input Card Information    ${PARAM}
    Cancel Transaction
    Transaction Status Should Be    cancelled

Get Transaction Status
    # Disable parametrization for a single test.
    [Parametrize]
    Register A New Transaction
    Transaction Status Should Be    registered
