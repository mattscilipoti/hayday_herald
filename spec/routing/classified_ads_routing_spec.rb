require "spec_helper"

describe ClassifiedAdsController do
  describe "routing" do

    it "routes to #index" do
      get("/classified_ads").should route_to("classified_ads#index")
    end

    it "routes to #new" do
      get("/classified_ads/new").should route_to("classified_ads#new")
    end

    it "routes to #show" do
      get("/classified_ads/1").should route_to("classified_ads#show", :id => "1")
    end

    it "routes to #edit" do
      get("/classified_ads/1/edit").should route_to("classified_ads#edit", :id => "1")
    end

    it "routes to #create" do
      post("/classified_ads").should route_to("classified_ads#create")
    end

    it "routes to #update" do
      put("/classified_ads/1").should route_to("classified_ads#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/classified_ads/1").should route_to("classified_ads#destroy", :id => "1")
    end

  end
end
