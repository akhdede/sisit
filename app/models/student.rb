class Student < ApplicationRecord
  extend FriendlyId

  friendly_id :nama_lengkap, use: :slugged

  belongs_to :dashboard, counter_cache: true

  counter_cache_with_conditions :dashboard, :jumlah_siswa_tk, [:jenis_kelamin, :jenjang_pendidikan], lambda{|jenis_kelamin, jenjang_pendidikan| jenis_kelamin == 1 && jenjang_pendidikan == 0} 

  counter_cache_with_conditions :dashboard, :jumlah_siswi_tk, [:jenis_kelamin, :jenjang_pendidikan], lambda{|jenis_kelamin, jenjang_pendidikan| jenis_kelamin == 2 && jenjang_pendidikan == 0} 

end
