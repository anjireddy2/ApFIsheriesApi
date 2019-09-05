class CreateRegsitrationTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :regsitration_types do |t|
    	t.string :name
	    t.timestamps
	end
  end
	
end

