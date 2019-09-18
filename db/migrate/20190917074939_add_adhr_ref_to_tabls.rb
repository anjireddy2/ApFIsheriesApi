class AddAdhrRefToTabls < ActiveRecord::Migration[5.2]
  def change
    add_column :society_members, :member_aadhaar_ref_id, :string
    add_column :vessel_details, :member_aadhaar_ref_id, :string
  end
end
