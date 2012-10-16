class ClassifiedAd < ActiveRecord::Base
  attr_accessible :item, :item_id, :total_cost, :quantity, :username
  belongs_to :item

  validates_presence_of :item
  #validates_presence_of :cost_per, :item, :quantity

  def total_cost=(value)
    super.tap do
      assign_cost_per
    end
  end

  def quantity=(value)
    super.tap do
      assign_cost_per
    end
  end

  private
  def assign_cost_per
    self.cost_per = (quantity.to_i == 0) ? 0 : total_cost.to_i/quantity.to_i
  end
end
# alias
Ad = ClassifiedAd
