class CreateBoatTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :boat_types do |t|
        t.string :type_of_boat
      t.timestamps
    end
  end
end
