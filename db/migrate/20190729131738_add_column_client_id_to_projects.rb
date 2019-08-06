class AddColumnClientIdToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :client_id, :integer
    add_column :projects, :contact_id, :integer 
    add_column :projects, :employee_id, :integer 
    add_column :projects, :building_id, :integer 
  end
end
