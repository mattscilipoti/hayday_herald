Given /^these Items:$/ do |table|
  table.hashes.each do |item_params|
    # Factory.create(:item, item_params)
    Item.create! item_params
  end
end

When /select the "(.*?)" Item$/ do |requested_item|
  choose(requested_item)
end

