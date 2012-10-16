Feature: Admin area

  Scenario: Authorization
    When I go to the "Admin" page
    Then I should see the "Unauthenticated" error message


#  Scenario: Update a Item
#    Given pending "how do I log in?"
#    Given I am logged in as a valid User
#
#    When I go to the Edit page for that Item
#    And I fill in "Name" with "New Item"
#    And I press "Update Item"
#    Then I should not see any error messages
#
#    When I list the Admin "Items"
#    Then I should see these Items:
#      | Name       |
#      | New Item   |
#
#
#  Scenario Outline: Update each Model
#    Given pending "fix the one above this first"
#    Given I am logged in as an Admin
#    And a <model> exists
#
#    When I go to the Edit page for that <model>model
#    And I save these updates to the <model>:
#      | <field> | New <field> |
#
#    Then I should not see any error messages
#
#    When I list the Admin "<model>"
#    Then I should see these action buttons "<buttons>"
#    And I should see these Admin <model>s:
#      | <field>     |
#      | New <field> |
#
#    Examples:
#      | model     | field | buttons            |
#      | Klass     | Name  | View, Edit         |
#      | Lesson    | Name  | Edit               |
#      | LessonSet | Name  | View, Edit, Delete |
#      | Resource  | Name  | View, Edit, Delete |
#      | Standard  | Name  | View, Edit, Delete |
