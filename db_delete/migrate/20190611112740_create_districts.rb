class CreateDistricts < ActiveRecord::Migration[5.2]
  def change
    create_table :districts do |t|
        t.integer :district_code
    	t.string :district_name
     t.timestamps
    end
  end
end
