class AddColumnKindergartenBoysStudentToKindergartenStudent < ActiveRecord::Migration[5.1]
  def change
    add_column :dashboards, :kindergarten_boys_student_count, :integer, default: 0
  end
end
