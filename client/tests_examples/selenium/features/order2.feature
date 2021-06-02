Feature: Order a phone
    As a user
    I want to be able to
    order a phone
    with a subscription plan

    Background:
        Given I am on the website
        And I choose a iPhone G
        And choose 18 mån Silver-abonnemang
        And choose 25GB data
        And click Beställ button


    Scenario: Entering contact-information
        When I enter my firstname
        And enter my lastname
        And enter telephonenumber
        And enter my email
        And enter street address
        And enter zip code
        And enter city name
        And click the Skicka button 
        Then have an order placed