class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :name 
      t.string :website 
      t.boolean :status
      t.integer :created_by 
      t.boolean :deleted
      t.string :library_dir
      t.integer :sec_terr
      t.integer :old_company_id
      t.integer :old_address_id
      t.integer :old_legacy_id
      t.timestamps
    end
  end
end
