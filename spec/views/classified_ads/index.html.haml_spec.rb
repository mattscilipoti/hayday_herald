require 'spec_helper'

describe "classified_ads/index" do
  before(:each) do
    assign(:classified_ads, [
      stub_model(ClassifiedAd, :item => Item.first),
      stub_model(ClassifiedAd, :item => Item.last)
    ])
  end

  it "renders a list of classified_ads" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
