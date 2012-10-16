class AddUsernameToAd < ActiveRecord::Migration
  def change
    add_column :classified_ads, :username, :string
  end
end
