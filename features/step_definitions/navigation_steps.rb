module NavigationLogic
  def path_to(path_name)
    send("#{path_name.parameterize.underscore}_path")
  end
end
World(NavigationLogic)

Given /(?:am|are) on the "(.+)" page$/ do |page_name|
  visit path_to(page_name)
end

When /go ?to the "(.*?)" page$/ do |page_name|
  visit path_to(page_name)
end

When /^I go to the (New|Edit) page for a (.+)$/ do |action, requested_model|
  model_name_for_path = requested_model.delete(' ').underscore
  visit send("#{action.underscore}_#{model_name_for_path}_path")
end

When /go to the Edit page for that (.+)/ do |model|
  visit send("edit_admin_#{model.underscore}_path", @current_model)
end

When /visit "(.+)"/ do |path|
  visit path
end

Then /should(?: still)? be on the "(.*?)" page$/i do |page_name|
  expected_path = path_to(page_name)
  current_path.should == expected_path
end

Then /should (?:remain|stay) on the same page/ do
  current_path.should == @saved_page
end

Then /^I should see the "(.*?)" video$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end
