class CreateFishermanSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :fisherman_skills do |t|

      t.timestamps
    end
  end
end
