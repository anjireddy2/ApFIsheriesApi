class CreateVesselCrewMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :vessel_crew_members do |t|
      t.references :vessel_detail
      t.string :vessel_reg_no
      t.string :member_aadhaar_id
      t.string :member_aadhaar_ref_id
      t.string :member_ration_card_number
      t.string :member_name
      t.string :memner_father_name
      t.string :member_age
      t.string :member_gender
      t.string :job_title
      t.integer :member_mobile_number
      t.string :member_social_status
      t.string :member_mfid
      t.string :bank_account_number
      t.string :bank_ifsc
      t.string :bank_name
      t.string :branch_name

      t.timestamps
    end
  end
end
