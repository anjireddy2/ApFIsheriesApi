class DistrictsController < ApplicationController
    
    def index
        @disitricts = District.all
        json_response(@disitricts)
    end
end
