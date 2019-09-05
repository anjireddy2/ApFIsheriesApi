class CreateRelationTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :relation_types do |t|

      t.timestamps
    end
  end
end
