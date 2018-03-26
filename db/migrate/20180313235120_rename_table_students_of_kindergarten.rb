class RenameTableStudentsOfKindergarten < ActiveRecord::Migration[5.1]
  def change
    rename_table('student_of_kindergarten', 'kindergarten_students')
  end
end
