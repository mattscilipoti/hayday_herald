class ClassifiedAd < ActiveRecord::Base
  attr_accessible :item, :item_id, :cost_per, :quantity
  belongs_to :item

  validates_presence_of :item
  #validates_presence_of :cost_per, :item, :quantity


  def total_cost
    cost_per.to_i * quantity.to_i
  end
end
