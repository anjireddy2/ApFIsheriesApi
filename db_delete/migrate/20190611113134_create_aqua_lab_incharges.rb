class CreateAquaLabIncharges < ActiveRecord::Migration[5.2]
  def change
    create_table :aqua_lab_incharges do |t|

      t.timestamps
    end
  end
end
