class AddEmpStatusToSocMem < ActiveRecord::Migration[5.2]
  def change
    add_column :society_members, :member_emp_status,:string
  end
end
