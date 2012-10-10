class AdsHaveItems < ActiveRecord::Migration
  def change
    add_column :classified_ads, :quantity, :integer, :default => 1
    add_column :classified_ads, :cost_per, :integer, :default => 0
  end
end
