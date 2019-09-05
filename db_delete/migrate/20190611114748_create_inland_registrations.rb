class CreateInlandRegistrations < ActiveRecord::Migration[5.2]
  def change
    create_table :inland_registrations do |t|

      t.timestamps
    end
  end
end
