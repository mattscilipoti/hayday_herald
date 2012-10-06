class ClassifiedAd < ActiveRecord::Base
  attr_accessible :item_id, :cost_per, :quantity
  belongs_to :item

  def total_cost
    cost_per.to_i * quantity.to_i
  end
end
