class CreateInvalidFlcs < ActiveRecord::Migration[5.2]
  def change
    create_table :invalid_flcs do |t|
        t.string :raised_exception
        t.string :data_of_invalid_flc
      t.timestamps
    end
  end
end
