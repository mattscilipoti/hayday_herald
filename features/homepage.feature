Feature: The Home Page
  The home page should wax poetic about the existing Features, hopes and dreams, and request feedback

  @smoke
  Scenario:  Home page exists
    Given I am on the home page
    Then I should not see any error messages

    When I follow "Classifieds"
    Then I should see "Your Classified Ads"
    Then I should be on the "Classified Ads" page
