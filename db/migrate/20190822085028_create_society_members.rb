class CreateSocietyMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :society_members do |t|
      t.string :president_name
      t.string :president_aadhar_no
      t.string :president_mobile_no
      t.string :president_ration_card_no
      t.integer :president_social_status
      t.string :president_caste_cert_no
      t.datetime :president_date_of_birth
      t.string :member_name
      t.string :member_aadhaar_no
      t.string :member_mobile_no
      t.string :member_ration_card_no
      t.integer :member_social_status
      t.string :member_caste_cert_no
      t.datetime :member_date_of_birth
      t.boolean :active_fisher_man
      t.boolean :swimming
      t.boolean :netting
      t.boolean :net_sweing
      t.timestamps
    end
  end
end
