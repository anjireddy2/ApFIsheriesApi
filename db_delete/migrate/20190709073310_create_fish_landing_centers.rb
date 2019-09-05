class CreateFishLandingCenters < ActiveRecord::Migration[5.2]
  def change
    create_table :fish_landing_centers do |t|
        t.string :flc_name
        t.references :village
        t.references :mandal
        t.references :district
        t.string :longitude
        t.string :latitude
      t.timestamps
    end
  end
end
