class CreateMarineVesselCrewMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :marine_vessel_crew_members do |t|
      t.text :crew_member_aadhar_ref_id
      t.text :crew_member_ration_card_no
      t.string :crew_member_name
      t.string :crew_member_father_name
      t.integer :crew_member_age
      t.string :gender
      t.string :job_title
      t.string :crew_member_mobile_no
      t.string :social_status
      t.string :mfid
      t.text :bank_account_no
      t.string :bank_ifsc
      t.string :bank_name
      t.string :branch_name
      t.datetime :last_modified_dt
      t.string :last_modified_by
      t.string :created_by
      t.datetime :created_at
      t.string :district_name
      t.string :mandal_name
      t.string :village_name
      t.string  :district_code
      t.string :mandal_code
      t.string :village_code
      t.string :crew_member_dob
      t.string :email
      t.string :is_active
      
      t.timestamps
    end
  end
end
