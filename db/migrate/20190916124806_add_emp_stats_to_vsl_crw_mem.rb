class AddEmpStatsToVslCrwMem < ActiveRecord::Migration[5.2]
  def change
    add_column :vessel_crew_members, :member_employement_status, :string
  end
end
