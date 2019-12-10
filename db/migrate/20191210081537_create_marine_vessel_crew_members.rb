class CreateMarineVesselCrewMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :marine_vessel_crew_members do |t|

      t.timestamps
    end
  end
end
