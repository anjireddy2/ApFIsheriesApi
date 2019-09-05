class CreateInvalidWaterBodies < ActiveRecord::Migration[5.2]
  def change
    create_table :invalid_water_bodies do |t|
        t.string :raised_exception
        t.string :data_of_invalid_water_body
        t.string :district_name
        t.string :mandal_name
      t.timestamps
    end
  end
end
