Feature: Classified Ads

  Scenario: Advertising my item
    Given these Items:
      | name  |
      | Wheat |
    When I go to the New page for a Classified Ad

    And I select the "Wheat" Item
    And I select "10" as the Quantity
    And I fill in:
      | Total cost | 20 |

    And I submit the page

    Then I should not see any error messages
    And I should be on the "Classified Ads" page

    And I should see these Classified Ads:
      | Item  | Cost Per | Quantity | Total Cost |
      | Wheat | 2        | 10       | 20         |



