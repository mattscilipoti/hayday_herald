When /select "(.*?)" as the Quantity$/ do |qty|
  within '#quantity' do
    choose qty
  end
end

Then /should see these Classified Ads:$/ do |table|
  table.diff! tableish('#classified_ads tr', 'td,th')
end
