class CreateApfSocietyMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :apf_society_members do |t|
      t.string :district
      t.integer :district_code
      t.integer :district_id
      t.string :mandal
      t.integer :mandal_code
      t.integer :mandal_id
      t.string :panchayat
      t.integer :panchayat_code
      t.integer :panchayat_id
      t.string :village
      t.integer :village_code
      t.integer :village_id
      t.string :pincode
      t.string :society_name
      t.integer :society_id
      t.string :society_reg_id
      t.string :role_name
      t.string :fisherman_reg_id
      t.string :fisherman_name
      t.string :father_name
      t.string :aadhaar_no
      # t.string :aadhar_ref
      t.string :mobile_no
      t.string :latitude
      t.string :longitude
      t.string :heading
      t.timestamps
    end
  end
end
