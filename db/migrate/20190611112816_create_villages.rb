class CreateVillages < ActiveRecord::Migration[5.2]
  def change
    create_table :villages do |t|
         t.references :mandal
         t.string :village_code
    	t.string :village_name
      
      t.timestamps
    end
  end
end
