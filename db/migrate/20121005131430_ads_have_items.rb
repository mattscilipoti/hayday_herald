class AdsHaveItems < ActiveRecord::Migration
  def change
    add_column :classified_ads, :quantity, :integer
    add_column :classified_ads, :cost_per, :integer
  end
end
