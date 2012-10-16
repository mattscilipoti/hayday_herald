describe NavigationHelper do
  describe '.nav_class_for' do
    context 'when tab is :classifieds' do
      it "should return nil for home controller" do
        self.controller = HomeController.new
        expect(helper.nav_class_for(:classifieds)).to be_nil
      end

      it "should return 'active' for classified_ads controller" do
        self.controller = ClassifiedAdsController.new
        expect(helper.nav_class_for(:classifieds)).to eql('active')
      end
    end

    context 'when tab is :admin' do
      it "should return nil for home controller" do
        self.controller = HomeController.new
        expect(helper.nav_class_for(:admin)).to be_nil
      end

      it "should return 'active' for an Admin controller" do
        self.controller = Admin::ItemsController.new
        expect(helper.nav_class_for(:admin)).to eql('active')
      end
    end

  end
end
