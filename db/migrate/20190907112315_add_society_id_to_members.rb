class AddSocietyIdToMembers < ActiveRecord::Migration[5.2]
  def change
    add_column :society_members, :society_registration_id, :integer
  end
end
