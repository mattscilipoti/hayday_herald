When /^I choose the "(.*?)" Item$/ do |item_name|
  within '#item' do
    select item_name
  end
end

When /select "(.*?)" as the (.+)/ do |qty, attribute|
  within "#classified_ad_#{attribute.underscore}" do
    choose qty
  end
end

Then /should see these Classified Ads:$/ do |table|
  table.diff! tableish('#classified_ads tr', 'td,th')
end
