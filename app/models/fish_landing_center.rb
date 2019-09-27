class FishLandingCenter < ApplicationRecord
    has_many :vessel_details
    belongs_to :mandal
    belongs_to :district
end
