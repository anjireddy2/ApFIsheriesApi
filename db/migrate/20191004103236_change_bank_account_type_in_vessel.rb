class ChangeBankAccountTypeInVessel < ActiveRecord::Migration[5.2]
  def change
    change_column :vessel_details, :bank_account_number, :string
  end
end
