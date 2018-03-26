class AlterColumnKindergartenGirlsStudentToKindergartenStudent < ActiveRecord::Migration[5.1]
  def change
    change_column :dashboards, :kindergarten_girls_student_count, :integer, default: 0
    change_column :dashboards, :kindergarten_boys_student_count, :integer, default: 0
  end
end
