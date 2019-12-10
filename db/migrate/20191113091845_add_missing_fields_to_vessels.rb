class AddMissingFieldsToVessels < ActiveRecord::Migration[5.2]
  def change
    add_column :vessel_details, :district_code,:integer
    add_column :vessel_details, :mandal_code,:integer
    add_column :vessel_details ,:area_of_operation,:string
    add_column :vessel_details, :village_code,:integer
    add_column :vessel_details, :panchayat_code,:integer
  end
end
