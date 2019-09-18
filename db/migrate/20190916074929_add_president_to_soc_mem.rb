class AddPresidentToSocMem < ActiveRecord::Migration[5.2]
  def change
    add_column :society_members,:is_president,:boolean
    change_column :society_members,:member_social_status,:string
  end
end
