class AddColumnsToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :old_project_id, :integer
    add_column :projects, :old_contact_id, :integer
    add_column :projects, :old_company_id, :integer
    add_column :projects, :old_employee_id, :integer
    add_column :projects, :old_created_by_id, :integer
    add_column :projects, :old_additionalusage, :integer
    add_column :projects, :old_secterr, :integer
    add_column :projects, :old_legacy_id, :integer
    add_column :projects, :job_num, :string
    add_column :projects, :project_type, :string
  end
end
