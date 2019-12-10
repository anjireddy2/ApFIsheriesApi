class CreateBanReliefCrewMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :ban_relief_crew_members do |t|

      t.timestamps
    end
  end
end
