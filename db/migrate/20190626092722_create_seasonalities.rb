class CreateSeasonalities < ActiveRecord::Migration[5.2]
  def change
    create_table :seasonalities do |t|
        t.string :seasonality_type
      t.timestamps
    end
  end
end
