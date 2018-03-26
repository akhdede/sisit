class CreateDashboards < ActiveRecord::Migration[5.1]
  def change
    create_table :dashboards do |t|
      t.integer :jumlah_siswa_tk, default: 0
      t.integer :jumlah_siswi_tk, default: 0
      t.integer :total_siswa_siswi_tk, default: 0

      t.timestamps
    end

    Dashboard.all.each do |t|
      Dashboard.reset_counters(t.id, :students)
    end
  end
end
