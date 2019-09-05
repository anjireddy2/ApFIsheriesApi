class CreateWaterBodyClusters < ActiveRecord::Migration[5.2]
  def change
    create_table :water_body_clusters do |t|
        t.references :user
        t.references :district
        t.string :cluster_name
      t.timestamps
    end
  end
end
