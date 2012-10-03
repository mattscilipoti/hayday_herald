Then /should see "(.+)"/ do |text|
  page.should have_content(text)
end

When /^I click on "(.*?)"$/ do |locator|
  click_link_or_button locator
end

# Use this to fill in an entire form with data from a table. Example:
#
#   When I fill in the following:
#     | Account Number | 5002       |
#     | Expiry date    | 2009-11-01 |
#     | Note           | Nice guy   |
#     | Wants Email?   |            |
#
# TODO: Add support for checkbox, select og option
# based on naming conventions.
#
When /fill in(?: these fields| the following)?:$/ do |fields|
  fields.rows_hash.each do |name, value|
    step %{I fill in "#{name}" with "#{value}"}
  end
end

# Usage:
#   When I fill in "Description" with "my new description"
When /fill in "([^"]*)" with "([^"]*)"$/ do |field, value|
  fill_in(field, :with => value)
end

# Usage:
#   When I fill in "Description" with:
#   """
#   A long description
#   with multiple lines
#   goes here
#   """
When /fill in "([^"]*)" with:$/ do |field, value|
  fill_in(field, :with => value)
end

When /follow "(.+)"$/ do |link_locator|
  if link_locator == "Logout"
    # click dropdown menu in new layouy
    step %{I press "loggedin-menu"}
  end
  click_link(link_locator)
end

When /press "(.*?)"$/ do |button_locator|
  click_button(button_locator)
end

When /save these updates to the (.+):/ do |model_name, table|
  within "#edit_#{model_name.underscore}" do
    step "fill in these fields:", table
    submit_form
  end
end

When /^I submit the form$/ do
  submit_form
end

