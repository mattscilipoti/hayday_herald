class CreateClassifiedAds < ActiveRecord::Migration
  def change
    create_table :classified_ads do |t|
      t.references :item
      t.timestamps
    end
  end
end
