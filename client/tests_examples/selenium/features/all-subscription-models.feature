Feature: Subscription model

  As a potential subscriber
  I would like to make selections
  from phones, contracts, data amounts and extras
  and find out about discounts
  and get a total price per month.

  Background:
    Given that I am on the Sellaphone campaign website

  Scenario Outline: Product combinations
    When I pick the phone: <phone>
    And the contract: <contract>
    And the data amount: <data>
    Then the discount will be <discount>
    And I the total price per month, after discounts, will be <total>

    Examples:
      | phone          | phone_price | contract             | contract_price | data     | data–price | discount | total |
      | "iPhone Z"     | 200         | "24 mån Guld"        | 100            | "10 GB"  | 50          | 0        | 350   |
      | "iPhone Z"     | 200         | "24 mån Guld"        | 100            | "25 GB"  | 100         | 0        | 400   |
      | "iPhone Z"     | 200         | "24 mån Guld"        | 100            | "50 GB"  | 150         | 0        | 450   |
      | "iPhone Z"     | 200         | "24 mån Guld"        | 100            | "100 GB" | 200         | 0.25     | 375   |
      | "iPhone G"     | 250         | "24 mån Guld"        | 100            | "10 GB"  | 50          | 0        | 400   |
      | "iPhone G"     | 250         | "24 mån Guld"        | 100            | "25 GB"  | 100         | 0        | 450   |
      | "iPhone G"     | 250         | "24 mån Guld"        | 100            | "50 GB"  | 150         | 0        | 500   |
      | "iPhone G"     | 250         | "24 mån Guld"        | 100            | "100 GB" | 200         | 0.25     | 412.5 |
      | "iPhone Mini"  | 110         | "24 mån Guld"        | 100            | "10 GB"  | 50          | 0        | 260   |
      | "iPhone Mini"  | 110         | "24 mån Guld"        | 100            | "25 GB"  | 100         | 0        | 310   |
      | "iPhone Mini"  | 110         | "24 mån Guld"        | 100            | "50 GB"  | 150         | 0        | 360   |
      | "iPhone Mini"  | 110         | "24 mån Guld"        | 100            | "100 GB" | 200         | 0.25     | 307.5 |
      | "Samsung Wear" | 200         | "24 mån Guld"        | 100            | "10 GB"  | 50          | 0        | 350   |
      | "Samsung Wear" | 200         | "24 mån Guld"        | 100            | "25 GB"  | 100         | 0        | 400   |
      | "Samsung Wear" | 200         | "24 mån Guld"        | 100            | "50 GB"  | 150         | 0        | 450   |
      | "Samsung Wear" | 200         | "24 mån Guld"        | 100            | "100 GB" | 200         | 0.25     | 375   |
      | "iDrink Nokia" | 100         | "24 mån Guld"        | 100            | "10 GB"  | 50          | 0        | 250   |
      | "iDrink Nokia" | 100         | "24 mån Guld"        | 100            | "25 GB"  | 100         | 0        | 300   |
      | "iDrink Nokia" | 100         | "24 mån Guld"        | 100            | "50 GB"  | 150         | 0        | 350   |
      | "iDrink Nokia" | 100         | "24 mån Guld"        | 100            | "100 GB" | 200         | 0.25     | 300   |
      | "iPhone Z"     | 200         | "18 mån Silver"      | 150            | "10 GB"  | 50          | 0.1      | 360   |
      | "iPhone Z"     | 200         | "18 mån Silver"      | 150            | "25 GB"  | 100         | 0.1      | 405   |
      | "iPhone Z"     | 200         | "18 mån Silver"      | 150            | "50 GB"  | 150         | 0.1      | 450   |
      | "iPhone Z"     | 200         | "18 mån Silver"      | 150            | "100 GB" | 200         | 0.1      | 495   |
      | "iPhone G"     | 250         | "18 mån Silver"      | 150            | "10 GB"  | 50          | 0        | 450   |
      | "iPhone G"     | 250         | "18 mån Silver"      | 150            | "25 GB"  | 100         | 0        | 500   |
      | "iPhone G"     | 250         | "18 mån Silver"      | 150            | "50 GB"  | 150         | 0        | 550   |
      | "iPhone G"     | 250         | "18 mån Silver"      | 150            | "100 GB" | 200         | 0        | 600   |
      | "iPhone Mini"  | 110         | "18 mån Silver"      | 150            | "10 GB"  | 50          | 0        | 310   |
      | "iPhone Mini"  | 110         | "18 mån Silver"      | 150            | "25 GB"  | 100         | 0        | 360   |
      | "iPhone Mini"  | 110         | "18 mån Silver"      | 150            | "50 GB"  | 150         | 0        | 410   |
      | "iPhone Mini"  | 110         | "18 mån Silver"      | 150            | "100 GB" | 200         | 0        | 460   |
      | "Samsung Wear" | 200         | "18 mån Silver"      | 150            | "10 GB"  | 50          | 0.2      | 320   |
      | "Samsung Wear" | 200         | "18 mån Silver"      | 150            | "25 GB"  | 100         | 0.2      | 360   |
      | "Samsung Wear" | 200         | "18 mån Silver"      | 150            | "50 GB"  | 150         | 0.2      | 400   |
      | "Samsung Wear" | 200         | "18 mån Silver"      | 150            | "100 GB" | 200         | 0.2      | 440   |
      | "iDrink Nokia" | 100         | "18 mån Silver"      | 150            | "10 GB"  | 50          | 0        | 300   |
      | "iDrink Nokia" | 100         | "18 mån Silver"      | 150            | "25 GB"  | 100         | 0        | 350   |
      | "iDrink Nokia" | 100         | "18 mån Silver"      | 150            | "50 GB"  | 150         | 0        | 400   |
      | "iDrink Nokia" | 100         | "18 mån Silver"      | 150            | "100 GB" | 200         | 0        | 450   |
      | "iPhone Z"     | 200         | "12 mån Student"     | 100            | "10 GB"  | 50          | 0        | 350   |
      | "iPhone Z"     | 200         | "12 mån Student"     | 100            | "25 GB"  | 100         | 0        | 400   |
      | "iPhone Z"     | 200         | "12 mån Student"     | 100            | "50 GB"  | 150         | 0        | 450   |
      | "iPhone Z"     | 200         | "12 mån Student"     | 100            | "100 GB" | 200         | 0        | 500   |
      | "iPhone G"     | 250         | "12 mån Student"     | 100            | "10 GB"  | 50          | 0        | 400   |
      | "iPhone G"     | 250         | "12 mån Student"     | 100            | "25 GB"  | 100         | 0        | 450   |
      | "iPhone G"     | 250         | "12 mån Student"     | 100            | "50 GB"  | 150         | 0        | 500   |
      | "iPhone G"     | 250         | "12 mån Student"     | 100            | "100 GB" | 200         | 0        | 550   |
      | "iPhone Mini"  | 110         | "12 mån Student"     | 100            | "10 GB"  | 50          | 0        | 260   |
      | "iPhone Mini"  | 110         | "12 mån Student"     | 100            | "25 GB"  | 100         | 0        | 310   |
      | "iPhone Mini"  | 110         | "12 mån Student"     | 100            | "50 GB"  | 150         | 0        | 360   |
      | "iPhone Mini"  | 110         | "12 mån Student"     | 100            | "100 GB" | 200         | 0        | 410   |
      | "Samsung Wear" | 200         | "12 mån Student"     | 100            | "10 GB"  | 50          | 0        | 350   |
      | "Samsung Wear" | 200         | "12 mån Student"     | 100            | "25 GB"  | 100         | 0        | 400   |
      | "Samsung Wear" | 200         | "12 mån Student"     | 100            | "50 GB"  | 150         | 0        | 450   |
      | "Samsung Wear" | 200         | "12 mån Student"     | 100            | "100 GB" | 200         | 0        | 500   |
      | "iDrink Nokia" | 100         | "12 mån Student"     | 100            | "10 GB"  | 50          | 0        | 250   |
      | "iDrink Nokia" | 100         | "12 mån Student"     | 100            | "25 GB"  | 100         | 0        | 300   |
      | "iDrink Nokia" | 100         | "12 mån Student"     | 100            | "50 GB"  | 150         | 0        | 350   |
      | "iDrink Nokia" | 100         | "12 mån Student"     | 100            | "100 GB" | 200         | 0        | 400   |
      | "iPhone Z"     | 200         | "Ingen bindningstid" | 250            | "10 GB"  | 50          | 0        | 500   |
      | "iPhone Z"     | 200         | "Ingen bindningstid" | 250            | "25 GB"  | 100         | 0        | 550   |
      | "iPhone Z"     | 200         | "Ingen bindningstid" | 250            | "50 GB"  | 150         | 0        | 600   |
      | "iPhone Z"     | 200         | "Ingen bindningstid" | 250            | "100 GB" | 200         | 0        | 650   |
      | "iPhone G"     | 250         | "Ingen bindningstid" | 250            | "10 GB"  | 50          | 0        | 550   |
      | "iPhone G"     | 250         | "Ingen bindningstid" | 250            | "25 GB"  | 100         | 0        | 600   |
      | "iPhone G"     | 250         | "Ingen bindningstid" | 250            | "50 GB"  | 150         | 0        | 650   |
      | "iPhone G"     | 250         | "Ingen bindningstid" | 250            | "100 GB" | 200         | 0        | 700   |
      | "iPhone Mini"  | 110         | "Ingen bindningstid" | 250            | "10 GB"  | 50          | 0        | 410   |
      | "iPhone Mini"  | 110         | "Ingen bindningstid" | 250            | "25 GB"  | 100         | 0        | 460   |
      | "iPhone Mini"  | 110         | "Ingen bindningstid" | 250            | "50 GB"  | 150         | 0        | 510   |
      | "iPhone Mini"  | 110         | "Ingen bindningstid" | 250            | "100 GB" | 200         | 0        | 560   |
      | "Samsung Wear" | 200         | "Ingen bindningstid" | 250            | "10 GB"  | 50          | 0        | 500   |
      | "Samsung Wear" | 200         | "Ingen bindningstid" | 250            | "25 GB"  | 100         | 0        | 550   |
      | "Samsung Wear" | 200         | "Ingen bindningstid" | 250            | "50 GB"  | 150         | 0        | 600   |
      | "Samsung Wear" | 200         | "Ingen bindningstid" | 250            | "100 GB" | 200         | 0        | 650   |
      | "iDrink Nokia" | 100         | "Ingen bindningstid" | 250            | "10 GB"  | 50          | 0        | 400   |
      | "iDrink Nokia" | 100         | "Ingen bindningstid" | 250            | "25 GB"  | 100         | 0        | 450   |
      | "iDrink Nokia" | 100         | "Ingen bindningstid" | 250            | "50 GB"  | 150         | 0        | 500   |
      | "iDrink Nokia" | 100         | "Ingen bindningstid" | 250            | "100 GB" | 200         | 0        | 550   |
      | "iPhone Z"     | 200         | "Global inclusive"   | 850            | "10 GB"  | 50          | 0        | 1100  |
      | "iPhone Z"     | 200         | "Global inclusive"   | 850            | "25 GB"  | 100         | 0        | 1150  |
      | "iPhone Z"     | 200         | "Global inclusive"   | 850            | "50 GB"  | 150         | 0        | 1200  |
      | "iPhone Z"     | 200         | "Global inclusive"   | 850            | "100 GB" | 200         | 0        | 1250  |
      | "iPhone G"     | 250         | "Global inclusive"   | 850            | "10 GB"  | 50          | 0        | 1150  |
      | "iPhone G"     | 250         | "Global inclusive"   | 850            | "25 GB"  | 100         | 0        | 1200  |
      | "iPhone G"     | 250         | "Global inclusive"   | 850            | "50 GB"  | 150         | 0        | 1250  |
      | "iPhone G"     | 250         | "Global inclusive"   | 850            | "100 GB" | 200         | 0        | 1300  |
      | "iPhone Mini"  | 110         | "Global inclusive"   | 850            | "10 GB"  | 50          | 0        | 1010  |
      | "iPhone Mini"  | 110         | "Global inclusive"   | 850            | "25 GB"  | 100         | 0        | 1060  |
      | "iPhone Mini"  | 110         | "Global inclusive"   | 850            | "50 GB"  | 150         | 0        | 1110  |
      | "iPhone Mini"  | 110         | "Global inclusive"   | 850            | "100 GB" | 200         | 0        | 1160  |
      | "Samsung Wear" | 200         | "Global inclusive"   | 850            | "10 GB"  | 50          | 0        | 1100  |
      | "Samsung Wear" | 200         | "Global inclusive"   | 850            | "25 GB"  | 100         | 0        | 1150  |
      | "Samsung Wear" | 200         | "Global inclusive"   | 850            | "50 GB"  | 150         | 0        | 1200  |
      | "Samsung Wear" | 200         | "Global inclusive"   | 850            | "100 GB" | 200         | 0        | 1250  |
      | "iDrink Nokia" | 100         | "Global inclusive"   | 850            | "10 GB"  | 50          | 0        | 1000  |
      | "iDrink Nokia" | 100         | "Global inclusive"   | 850            | "25 GB"  | 100         | 0        | 1050  |
      | "iDrink Nokia" | 100         | "Global inclusive"   | 850            | "50 GB"  | 150         | 0        | 1100  |
      | "iDrink Nokia" | 100         | "Global inclusive"   | 850            | "100 GB" | 200         | 0        | 1150  |


