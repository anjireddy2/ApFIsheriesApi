class VesselDetail < ApplicationRecord
    
#     belongs_to :user
#     belongs_to :district
#     belongs_to :mandal
#     belongs_to :fish_landing_center
#     has_many :vessel_crew_members

#     validates_presence_of :owner_name,:boat_id,:license_renewed_date
#     validates_presence_of :license_valid_upto,:father_name
#     validates_presence_of :mobile_number,:father_name,:aadhaar_no
#    validates_presence_of :bank_account_number,:ifsc_code#,:mfid_number
#    validates_presence_of :bank_details,:is_eligible
#    validates :boat_id,:uniqueness => true

#    scope :un_verified_vessels, -> { where(:member_aadhaar_ref_id => nil) }
#    scope :verified_vessels, -> { where("member_aadhaar_ref_id !=",  "''") }
end
   