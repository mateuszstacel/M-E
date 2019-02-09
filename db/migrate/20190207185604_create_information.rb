class CreateInformation < ActiveRecord::Migration[5.2]
  def change
    create_table :information do |t|
      t.string :person
      t.string :oa11
      t.string :address1
      t.string :address2
      t.string :address3
      t.string :town
      t.string :county
      t.string :postcode

      t.timestamps
    end
  end
end
