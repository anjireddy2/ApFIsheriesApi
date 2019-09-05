class CreateAquaLabs < ActiveRecord::Migration[5.2]
  def change
    create_table :aqua_labs do |t|

      t.timestamps
    end
  end
end
