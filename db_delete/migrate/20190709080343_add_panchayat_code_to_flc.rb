class AddPanchayatCodeToFlc < ActiveRecord::Migration[5.2]
  def change
      add_column :fish_landing_centers, :panchayat_id, :integer
  end
end
