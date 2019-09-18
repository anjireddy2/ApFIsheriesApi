class ChangeMobNoInVslCrwMem < ActiveRecord::Migration[5.2]
  def change
    change_column :vessel_crew_members, :member_mobile_number, :string
  end
end
