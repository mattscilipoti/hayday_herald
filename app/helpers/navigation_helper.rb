module NavigationHelper
  def nav_class_for(tab)
    case tab
    when :classifieds
      return 'active' if controller.is_a?(ClassifiedAdsController)
    when :admin
      return 'active' if controller.class.parent == Admin
    end
  end
end
