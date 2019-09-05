class CreateFreshWaterLandDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :fresh_water_land_details do |t|

      t.timestamps
    end
  end
end
