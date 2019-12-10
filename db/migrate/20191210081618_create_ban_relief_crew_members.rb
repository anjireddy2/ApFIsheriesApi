class CreateBanReliefCrewMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :ban_relief_crew_members do |t|
      t.integer :crew_mem_scheme_id
      t.integer :crew_member_id
      t.integer :comp_budget_id
      t.datetime :budget_fin_year_start_date
      t.datetime :budget_fin_year_end_date
      t.boolean :is_apporved
      t.datetime :last_modified_dt
      t.string :last_modified_by
      t.string :created_by
      t.datetime :created_at
      t.string :application_status
      t.string :application_reg_no
      t.string :vessel_reg_no
      t.integer :vessel_id
      t.timestamps
    end
  end
end
