class AddClusterCheckToDistrict < ActiveRecord::Migration[5.2]
  def change
      add_column :districts,:having_cluster,:boolean
  end
end
