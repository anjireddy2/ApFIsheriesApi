class CreateSocietyRegistrations < ActiveRecord::Migration[5.2]
  def change
    create_table :society_registrations do |t|
      t.references :district
      t.references :mandal
      t.references :village
      t.references :panchayat
      t.references :fish_landing_center
      t.string :society_name
      t.string :society_reg_no
      t.boolean :ncdc
      
      t.timestamps
    end
  end
end
