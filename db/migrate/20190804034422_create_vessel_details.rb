class CreateVesselDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :vessel_details do |t|
        t.references :district
        t.references :mandal
        t.references :fish_landing_center
        t.references :user
        t.string :owner_id
        t.string :owner_name
        t.string :boat_id
        t.string :boat_type
        t.datetime :license_renewed_date
        t.datetime :license_valid_upto
        t.string :father_name
        t.string :aadhaar_no
        t.bigint :mobile_number
        t.bigint :bank_account_number
        t.string :ration_card_number
        t.string :ifsc_code
        t.string :mfid_number
        t.string :bank_details
        t.string :email_id
        t.boolean :deleted
        t.string :creation_level
        t.string :is_eligible
        t.integer :rejection_reason_id
        t.string :comment
        t.integer :gill_net_count
        t.integer :drag_net_count
        t.integer :cast_net_count
        t.integer :trawl_net_count
        t.integer :life_bouys_count
        t.integer :dat_count
        t.integer :gps_count
        t.integer :fish_finder_count
        t.integer :echo_sounder_count
        t.string :vessel_name
      t.timestamps
    end
  end
end
