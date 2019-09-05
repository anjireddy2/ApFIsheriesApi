class PanchayatsController < ApplicationController
    
    before_action :get_mandal
    
    def index
        @panchayats = @mandal.panchayats
        json_response(@panchayats)
    end
    
    private
    
    def get_mandal
        @mandal = Mandal.where(:id => params[:mandal_id]).first
    end
end
