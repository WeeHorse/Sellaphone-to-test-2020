Feature: Subscription model

  As a potential subscriber
  I would like to make selections
  from phones, contracts, data amounts and extras
  and find out about discounts
  and get a total price per month.

  Background:
    Given that I am on the Sellaphone campaign website

  Scenario Outline: Product combinations
    When I pick the phone: <phone_index>
    And the contract: <contract>
    And the data amount: <data>
    Then the discount will be <discount>
    And I the total price per month, after discounts, will be <total>

    Examples:
      | phone      | phone_index | phone_price | contract      | contract_price | data     | data–price | discount | total |
      | "iPhone G" | 1           | 250         | "24 mån Guld" | 100            | "100 GB" | 200         | 0.25     | 412.5 |

