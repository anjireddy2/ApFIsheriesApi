class CreateAquaLabImages < ActiveRecord::Migration[5.2]
  def change
    create_table :aqua_lab_images do |t|

      t.timestamps
    end
  end
end
