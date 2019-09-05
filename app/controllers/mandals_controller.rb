class MandalsController < ApplicationController
    
    before_action :get_district
    
    def index
        @mandals = @district.mandals
        json_response(@mandals)
    end
    
    private
    
    def get_district
        @district = District.where(:id => params[:district_id]).first
    end
end
