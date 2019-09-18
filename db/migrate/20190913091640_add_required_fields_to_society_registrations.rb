class AddRequiredFieldsToSocietyRegistrations < ActiveRecord::Migration[5.2]
  def change
    add_column :society_registrations, :aadhaar_ref_id, :string
    add_column :society_registrations, :gender, :string
    add_column :society_registrations,:is_promoter, :boolean
    add_column :society_registrations,:date_of_birth, :datetime
    add_column :society_registrations,:age,:integer
    add_column :society_registrations,:emp_status,:integer
    add_column :society_registrations,:social_status, :integer
    add_column :society_registrations,:fish_vendor, :boolean
 end
end
