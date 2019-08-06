class CreateEmails < ActiveRecord::Migration[5.2]
  def change
    create_table :emails do |t|
      t.string :email_address
      t.string :email_type
      t.string :email_detected
      t.integer :old_email_link_id
      t.integer :old_email_intforeignid
      t.integer :old_email_intid

      t.timestamps
    end
  end
end
