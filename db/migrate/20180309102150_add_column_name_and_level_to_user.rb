class AddColumnNameAndLevelToUser < ActiveRecord::Migration[5.1]
  def up
    add_column :users, :name, :string
    add_column :users, :level, :integer
  end
  def down
    remove_column :users, :name
    remove_column :users, :level
  end
end
