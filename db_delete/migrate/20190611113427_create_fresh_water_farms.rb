class CreateFreshWaterFarms < ActiveRecord::Migration[5.2]
  def change
    create_table :fresh_water_farms do |t|

      t.timestamps
    end
  end
end
