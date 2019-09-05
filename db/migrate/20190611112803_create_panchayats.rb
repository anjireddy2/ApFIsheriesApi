class CreatePanchayats < ActiveRecord::Migration[5.2]
  def change
    create_table :panchayats do |t|
    	t.references :mandal
        t.integer :panchayat_code
    	t.string :panchayat_name
    	t.timestamps
    end
  end
end
