class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :nama_lengkap
      t.integer :jenis_kelamin
      t.integer :nisn
      t.integer :nik
      t.string :tempat_lahir
      t.date :tanggal_lahir
      t.string :akta_lahir
      t.integer :anak_ke
      t.integer :no_hp
      t.integer :tiggi_badan
      t.integer :berat_badan
      t.integer :jumlah_saudara
      t.integer :kebutuhan_khusus
      t.string :asal_sekolah
      t.integer :status, default: 0
      t.integer :tahun_masuk_sekolah
      t.text :alamat
      t.integer :kelurahan_id
      t.integer :kecamatan_id
      t.integer :kabupaten_id
      t.integer :provinsi_id
      t.integer :agama_id
      t.integer :tempat_tinggal_id
      t.integer :mode_transportasi_id
      t.integer :jenjang_pendidikan_id
      t.integer :family_id

      t.timestamps
    end
  end
end
