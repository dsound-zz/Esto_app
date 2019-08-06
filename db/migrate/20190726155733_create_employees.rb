class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :title 
      t.string :department 
      t.integer :old_employee_id
      
      t.timestamps
    end
  end
end
