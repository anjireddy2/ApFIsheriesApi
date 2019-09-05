class CreateProductionTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :production_types do |t|

      t.timestamps
    end
  end
end
