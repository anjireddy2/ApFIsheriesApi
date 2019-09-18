class AddDobAndEmailToVslCrwMem < ActiveRecord::Migration[5.2]
  def change
    add_column :vessel_crew_members, :member_email, :string
    add_column :vessel_crew_members, :member_date_of_birth, :datetime
  end
end
