class AddColumnDashboardIdToKindergartenStudents < ActiveRecord::Migration[5.1]
  def change
    add_column :kindergarten_students, :dashboard_id, :integer
  end
end
