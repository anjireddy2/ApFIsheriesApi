class CreateAquaLabEquipments < ActiveRecord::Migration[5.2]
  def change
    create_table :aqua_lab_equipments do |t|

      t.timestamps
    end
  end
end
