class CreateWaterBodyOwnerships < ActiveRecord::Migration[5.2]
  def change
    create_table :water_body_ownerships do |t|
        t.string :type_of_ownership
      t.timestamps
    end
  end
end
