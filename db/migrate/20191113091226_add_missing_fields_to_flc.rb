class AddMissingFieldsToFlc < ActiveRecord::Migration[5.2]
  def change
    add_column :fish_landing_centers, :district_code,:integer
    add_column :fish_landing_centers, :mandal_code,:integer
    add_column :fish_landing_centers ,:area_of_operation,:string
    add_column :fish_landing_centers, :village_code,:integer
    add_column :fish_landing_centers, :panchayat_code,:integer
  end
end
