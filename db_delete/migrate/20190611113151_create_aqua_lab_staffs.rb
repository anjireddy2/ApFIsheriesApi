class CreateAquaLabStaffs < ActiveRecord::Migration[5.2]
  def change
    create_table :aqua_lab_staffs do |t|

      t.timestamps
    end
  end
end
