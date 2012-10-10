class AdHasTotalCost < ActiveRecord::Migration
  def change
    add_column :classified_ads, :total_cost, :integer, :default => 0
  end
end
