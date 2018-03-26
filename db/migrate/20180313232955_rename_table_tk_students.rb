class RenameTableTkStudents < ActiveRecord::Migration[5.1]
  def change
    rename_table('tk_students', 'student_of_kindergarten')
  end
end
