Feature: Classified Ads

  Scenario: Advertising my item
    Given these Items:
      | name  |
      | Wheat |
    When I go to the New page for a Classified Ad

    And I choose the "Wheat" Item
    And I fill in:
      | Username   | the_user |
      | Quantity   | 10       |
      | Total cost | 20       |

    And I submit the page

    Then I should not see any error messages
    And I should be on the "Classified Ads" page

    And I should see these Classified Ads:
      | Username | Item  | Cost Per | Quantity | Total Cost |
      | the_user | Wheat | 2        | 10       | 20         |



