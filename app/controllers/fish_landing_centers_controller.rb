class FishLandingCentersController < ApplicationController
    
    before_action :get_mandal
    
    def index
        res = @mandal.fish_landing_centers
        json_response(res) 
    end
    
    private
    
    def get_mandal
        @mandal = Mandal.where(:id => params[:mandal_id]).first
    end
end
