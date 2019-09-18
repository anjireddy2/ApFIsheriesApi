class CreateUserDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :user_details do |t|
		t.references :registration_type
		t.string :user_name
		t.string :mobile_number
    	t.string :gender
    	t.datetime :date_of_birth
    	t.references :state
    	t.references :district
    	t.references :mandal
    	t.references :grama_panchayat
    	t.references :village
    	t.string :pincode
    	t.string :alternate_mobile_no
    	t.string :email
    	t.references :user
        t.timestamps
    end
  end
end
