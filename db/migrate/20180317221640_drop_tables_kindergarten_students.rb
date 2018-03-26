class DropTablesKindergartenStudents < ActiveRecord::Migration[5.1]
  def change
    drop_table :kindergarten_students
  end
end
