class CreateInvalidVessels < ActiveRecord::Migration[5.2]
  def change
    create_table :invalid_vessels do |t|
        t.string :raised_exception
        t.string :data_of_invalid_vessel
      t.timestamps
    end
  end
end
