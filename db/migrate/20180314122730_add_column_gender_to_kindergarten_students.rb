class AddColumnGenderToKindergartenStudents < ActiveRecord::Migration[5.1]
  def change
    add_column :kindergarten_students, :gender, :integer
  end
end
