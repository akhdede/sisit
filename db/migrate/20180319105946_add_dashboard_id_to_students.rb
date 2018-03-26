class AddDashboardIdToStudents < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :dashboard_id, :integer
  end
end
