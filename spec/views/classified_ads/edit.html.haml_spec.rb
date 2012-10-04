require 'spec_helper'

describe "classified_ads/edit" do
  before(:each) do
    @classified_ad = assign(:classified_ad, stub_model(ClassifiedAd))
  end

  it "renders the edit classified_ad form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => classified_ads_path(@classified_ad), :method => "post" do
    end
  end
end
