class CreateSearches < ActiveRecord::Migration[5.2]
  def change
    create_table :searches do |t|
      t.string :employee
      t.integer :employee_id

      t.timestamps
    end
  end
end
