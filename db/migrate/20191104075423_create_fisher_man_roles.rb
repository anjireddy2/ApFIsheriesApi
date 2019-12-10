class CreateFisherManRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :fisher_man_roles do |t|
      t.string :role_name
      t.timestamps
    end
  end
end
