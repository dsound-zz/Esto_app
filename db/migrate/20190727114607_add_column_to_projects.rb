class AddColumnToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :old_final_date, :datetime
  end
end
