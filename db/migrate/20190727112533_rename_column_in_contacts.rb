class RenameColumnInContacts < ActiveRecord::Migration[5.2]
  def change
    rename_column :contacts, :frist_name, :first_name 
  end
end
