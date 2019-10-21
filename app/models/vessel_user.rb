class VesselUser < ApplicationRecord
    belongs_to :vessel_detail
    belongs_to :user
end
