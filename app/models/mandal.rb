class Mandal < ApplicationRecord
    
    belongs_to :district
    has_many :panchayats
    has_many :villages
    has_many :water_bodies
    has_many :vessel_detials
    has_many :fish_landing_centers

    scope :flc_mandals, -> { joins(:fish_landing_centers).where('fish_landing_centers.mandal_id > 0') }

end
