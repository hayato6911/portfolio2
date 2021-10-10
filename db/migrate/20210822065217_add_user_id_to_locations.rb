class AddUserIdToLocations < ActiveRecord::Migration[5.2]
  def change
    add_column :locations, :user_id, :string
    add_column :locations, :introduction, :string
  end
end
