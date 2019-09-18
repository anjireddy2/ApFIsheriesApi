class CreateSocietyVessels < ActiveRecord::Migration[5.2]
  def change
    create_table :society_vessels do |t|
      t.references :society_registraion
      t.references :vessel_detail
      t.timestamps
    end
  end
end
