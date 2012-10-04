require 'spec_helper'

describe "classified_ads/new" do
  before(:each) do
    assign(:classified_ad, stub_model(ClassifiedAd).as_new_record)
  end

  it "renders new classified_ad form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => classified_ads_path, :method => "post" do
    end
  end
end
