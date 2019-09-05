class CreateMandals < ActiveRecord::Migration[5.2]
  def change
    create_table :mandals do |t|
    	t.references :district
        t.integer :mandal_code
    	t.string :mandal_name
      t.timestamps
    end
  end
end
