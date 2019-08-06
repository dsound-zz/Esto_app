class CreatePhones < ActiveRecord::Migration[5.2]
  def change
    create_table :phones do |t|
      t.integer :old_phone_id
      t.string :phone_type
      t.string :phone_country_code
      t.string :phone_area_code
      t.string :phone_num
      t.string :phone_ext
      t.string :phone_initid
      t.string :phone_foreign_id
      t.references :phonable, polymorphic: true

      t.timestamps
    end
  end
end
