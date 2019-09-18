class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
    	t.string :aadhaar_no
    	t.string :password
    	t.string :mobile_no
      t.references :role
      t.string :user_name
      t.timestamps
    end
  end

end
