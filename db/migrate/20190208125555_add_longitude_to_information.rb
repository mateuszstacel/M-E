class AddLongitudeToInformation < ActiveRecord::Migration[5.2]
  def change
    add_column :information, :longitude, :decimal
  end
end
