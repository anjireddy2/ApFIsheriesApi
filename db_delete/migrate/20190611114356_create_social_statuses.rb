class CreateSocialStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :social_statuses do |t|

      t.timestamps
    end
  end
end
