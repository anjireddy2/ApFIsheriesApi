class CreateFreshWaterBoundaries < ActiveRecord::Migration[5.2]
  def change
    create_table :fresh_water_boundaries do |t|

      t.timestamps
    end
  end
end
