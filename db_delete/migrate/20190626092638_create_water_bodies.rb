class CreateWaterBodies < ActiveRecord::Migration[5.2]
  def change
    create_table :water_bodies do |t|
    t.references :district
        t.references :mandal
        t.references :village
        t.string :water_body_name
        t.references :water_body_cluster
        t.references :panchayat
        t.string :village_name
      t.timestamps
    end
  end
end
