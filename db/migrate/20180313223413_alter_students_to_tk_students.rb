class AlterStudentsToTkStudents < ActiveRecord::Migration[5.1]
  def up
    rename_table('students', 'tk_students')
  end
  def down
    rename_table('tk_students', 'students')
  end
end
