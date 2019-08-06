class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :frist_name
      t.string :last_name 
      t.string :title 
      t.string :department
      t.integer :sec_terr
      t.integer :old_contact_id
      t.integer :old_address_id
      t.integer :old_company_id 
      t.integer :old_legacy_id 
      t.timestamps
    end
  end
end
