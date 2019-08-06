class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.integer :old_address_id
      t.string :line_1
      t.string :line_2
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :country
      t.references :addressable, polymorphic: true

      t.timestamps
    end
  end
end
