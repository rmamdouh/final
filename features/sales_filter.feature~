Feature: display list of good filtered by check box
 
  As a concerned buyer
  So that I can quickly browse sales appropriate for me
  I want to see slaes matching only certain cities

Background: sales in database

  Given the following movies exist:
  | good         | price  | city         |   date       |
  | good1        | 11     | Cairo        |   1977-05-25 |
  | good1        | 22     | Alex         |   1988-05-25 |
  | good1        | 33     | Aswan        |   1999-05-25 |
  | good1        | 33     | Mansoura     |   1999-05-25 |
  And  I am on the home page

Scenario: filter sales by city
  When I check the following cities: Cairo, Alex
  When I uncheck the following ratings: Mansoura, Aswan
  And I press "Refresh"
  Then I should see "Cairo"
  Then I should see "Alex"
  Then I should not see "Mansoura"
  Then I should not see "Mansoura"
