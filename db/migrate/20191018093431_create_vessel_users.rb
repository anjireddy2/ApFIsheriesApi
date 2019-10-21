class CreateVesselUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :vessel_users do |t|
      t.references :user
      t.references :vessel_detail
      t.text :data_before_save
      t.text :data_after_save
      t.timestamps
    end
  end
end
