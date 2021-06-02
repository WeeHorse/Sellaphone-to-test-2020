Feature: Order a phone
   As a user
   I want to be able to
   order a phone
   with a subscription plan
 
   Background:
   Given that I am on the website
   And click the Beställ button
 
   Scenario: Entering contact-information
   When I enter my firstname
   And enter my lastname
   And enter telephone number
   And enter my email
   And enter my street address
   And enter zip-code
   And enter my cityname
   Then I click the Skicka button and should have placed an order
   