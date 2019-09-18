class AddUsrIdToTabs < ActiveRecord::Migration[5.2]
  def change
    add_column :society_members, :user_id,:integer
    add_column :vessel_crew_members,:user_id,:integer
  end
end
