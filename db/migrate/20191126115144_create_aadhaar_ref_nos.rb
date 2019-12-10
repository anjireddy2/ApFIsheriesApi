class CreateAadhaarRefNos < ActiveRecord::Migration[5.2]
  def change
    create_table :aadhaar_ref_nos do |t|
      t.string :aadhaar_no
      t.string :dev_aadhaar_ref_no
      t.string :qa_aadhaar_ref_no
      t.string :uat_aadhaar_ref_no
      t.string :prod_aadhaar_ref_no
      t.timestamps
    end
  end
end
