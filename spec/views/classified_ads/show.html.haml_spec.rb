require 'spec_helper'

describe "classified_ads/show" do
  before(:each) do
    @classified_ad = assign(:classified_ad, stub_model(ClassifiedAd, :item => Item.last || Item.new(:name => 'TEST')))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
