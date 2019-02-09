class AddLatitudeToInformation < ActiveRecord::Migration[5.2]
  def change
    add_column :information, :latitude, :decimal
  end
end
