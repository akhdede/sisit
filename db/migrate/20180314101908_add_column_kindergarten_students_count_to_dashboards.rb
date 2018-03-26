class AddColumnKindergartenStudentsCountToDashboards < ActiveRecord::Migration[5.1]
  def up
    add_column :dashboards, :kindergarten_students_count, :integer, default: 0

    Dashboard.all.each do |t|
      Dashboard.reset_counters(t.id, :kindergarten_students)
    end
  end
  def down
    remove_column :dashboards, :kindergarten_students_count
  end
end
