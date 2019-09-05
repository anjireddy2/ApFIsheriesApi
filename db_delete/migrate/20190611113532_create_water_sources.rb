class CreateWaterSources < ActiveRecord::Migration[5.2]
  def change
    create_table :water_sources do |t|

      t.timestamps
    end
  end
end
