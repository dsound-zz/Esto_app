class CreateBuildings < ActiveRecord::Migration[5.2]
  def change
    create_table :buildings do |t|
      t.string :description 
      t.string :location 
      t.string :architect 
      
      t.timestamps
    end
  end
end
