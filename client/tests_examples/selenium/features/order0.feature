Feature: Make choices

  Scenario: When I choose iPhone Z and 18 month contract
    Given that I'm at the Sellaphone page
    When I choose 'iPhone Z'
    And I choose the 18 month contract
    Then the total should be 315

