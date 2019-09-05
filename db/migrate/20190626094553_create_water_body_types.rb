class CreateWaterBodyTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :water_body_types do |t|
     t.string :type_of_water_body
      t.timestamps
    end
  end
end
