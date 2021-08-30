class AddMapsToLocations < ActiveRecord::Migration[5.2]
  def change
    add_column :locations, :latitude, :float
    add_column :locations, :longitude, :string
  end
end
