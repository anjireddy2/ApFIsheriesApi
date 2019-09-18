class AddAgeToSocMem < ActiveRecord::Migration[5.2]
  def change
    add_column :society_members,:age,:integer
  end
end
