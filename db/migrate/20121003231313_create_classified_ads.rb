class CreateClassifiedAds < ActiveRecord::Migration
  def change
    create_table :classified_ads do |t|
      t.belongs_to :item, :null => false
      t.integer :quantity
      t.integer :cost_per

      t.timestamps
    end
  end
end
