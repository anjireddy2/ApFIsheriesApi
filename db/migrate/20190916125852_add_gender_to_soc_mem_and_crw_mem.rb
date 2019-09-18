class AddGenderToSocMemAndCrwMem < ActiveRecord::Migration[5.2]
  def change
    add_column :society_members, :gender, :string
    add_column :vessel_crew_members, :gender, :string
  end
end
