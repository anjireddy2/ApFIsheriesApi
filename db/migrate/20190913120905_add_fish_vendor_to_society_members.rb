class AddFishVendorToSocietyMembers < ActiveRecord::Migration[5.2]
  def change
    add_column :society_members,:fish_vendor,:boolean
  end
end
