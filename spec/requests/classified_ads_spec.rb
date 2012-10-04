require 'spec_helper'

describe "ClassifiedAds" do
  describe "GET /classified_ads" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get classified_ads_path
      response.status.should be(200)
    end
  end
end
