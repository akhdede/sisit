class DropTableDashboard < ActiveRecord::Migration[5.1]
  def change
    drop_table :dashboards
  end
end
