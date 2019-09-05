class CreateWaterBodyDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :water_body_details do |t|
        t.references :water_body
        t.references :seasonality
        t.references :water_body_type
        t.references :water_body_ownership
        t.string :twsa
        t.string :ewsa
        t.string :required_fingarling
      t.timestamps
    end
  end
end
