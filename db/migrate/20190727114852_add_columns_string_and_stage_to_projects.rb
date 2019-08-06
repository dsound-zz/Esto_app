class AddColumnsStringAndStageToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :status, :string
    add_column :projects, :stage, :string
  end
end
