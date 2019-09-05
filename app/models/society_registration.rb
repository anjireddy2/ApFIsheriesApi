class SocietyRegistration < ApplicationRecord
    belongs_to :district
    belongs_to :mandal
    belongs_to :fish_landing_center
    validates_presence_of :district_id,:mandal_id,:fish_landing_center_id,:society_name,:society_reg_no#,:ncdc
    validates :society_reg_no,:uniqueness => true
end
