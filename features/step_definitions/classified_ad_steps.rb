Then /should see these Classified Ads:$/ do |table|
  table.diff! tableish('#classified_ads tr', 'td,th')
end
